image_resource = (`find ../../Assets.xcassets  -name "*.png"`.lines + `find . -name "*.jpg"`.lines)
	.reject {|line| line =~ /Pods/}
	.reject {|line| line =~ /Frameworks/}
	.reject {|line| line =~ /Build/}
    .reject {|line| line =~ /AppIcon.appiconset/}
    .reject {|line| line =~ /Launch/}
	.map(&:strip)
	.map {|line| File.basename(line)}
	.map {|line| line.gsub('@2x', '').gsub('@3x', '').gsub('@3X', '')}
	.map {|line| line.gsub(/\s+/, '')}
	.map {|line| line.gsub('.png', '')}
	.uniq

puts image_resource


def id_for_name(name)
	'R_' + name.gsub('.', '_').gsub('-', '_')
end

def export_def_for_name(name)
	"extern NSString * #{id_for_name(name)};"
end

def id_def_for_name(name)
	"NSString * #{id_for_name(name)} = @\"#{name}\";"
end

header = image_resource.map {|name| export_def_for_name(name)}.join("\n")
defs = image_resource.map {|name| id_def_for_name(name)}.join("\n")

File.write('R.h', header)
File.write('R.m', defs)
