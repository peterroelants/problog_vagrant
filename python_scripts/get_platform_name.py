import platform

if __name__ == '__main__' :
    platform_info = platform.uname()
    platform_name = platform_info[0].lower()
    print(platform_name + '_' + platform_info[4].lower())