import sys
from androguard.misc import AnalyzeAPK

path=sys.argv[1]

a,d,dx=AnalyzeAPK(path)

wrds=path.split(".")
name=wrds[1][1:]

def write_next(data):
    data.write("\n")
    data.write("---\n")
    
def write_title(data,title):
    data.write(f"### {title.title()}\n")
    
def write_data(data,prop,msg):
    data.write(f"{prop.title()}: {msg}  \n")
    
def write_list(data,title,elements):
    data.write(f"### {title}: \n")
    data.writelines(["* "+i+"\n" for i in elements])
    write_next(data)


with open(f"./output/{name}.md","w") as data:
    data.write(f"# APK ANALYSIS OF THE APK FILE: {name}\n")
    # App Permissions
    write_list(data,"APK PERMISSIONS",a.get_permissions())
    # App Activities
    write_list(data,"APK ACTIVITIES",a.get_activities())
    # Basic Information
    write_title(data,"Basic Information")
    write_data(data,"Package Name",a.get_package())
    write_data(data,"App Name",a.get_app_name())
    write_data(data,"Icon Path",a.get_app_icon())
    write_next(data)
    # Additional Information
    write_title(data,"Additional Information")
    write_data(data,"Android Version Code",a.get_androidversion_code())
    write_data(data,"Android Version Name",a.get_androidversion_name())
    write_data(data,"Min SDK",a.get_min_sdk_version())
    write_data(data,"Max SDK",a.get_max_sdk_version())
    write_data(data,"Target SDK",a.get_target_sdk_version())
    write_data(data,"Effective SDK",a.get_effective_target_sdk_version())
    write_next(data)
    # XML Manifest
    write_title(data,"AndroidManifest")
    manidata=str(a.get_android_manifest_axml().get_xml(),"utf-8")
    with open(f"./output/{name}-AndroidManifest.xml","w") as mani:
        mani.write(manidata)
    write_data(data,"Android Manifest",f"Written as {name}-AndroidManifest.xml")
    write_next(data)