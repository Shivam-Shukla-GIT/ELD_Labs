webtalk_init -webtalk_dir D:\\Drive_D\\ELD2023\\Lab10\\Lab10.sdk\\webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2023-11-14 17:05:14" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2019.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2019.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "211578208_1777537401_210688999_346" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "jmi4bcblmbvnn6difn0c79n5f2" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2019.1_5" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "5" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 8 or later , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "12th Gen Intel(R) Core(TM) i7-12800HX" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2304 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "34.011 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1699960579049" -context "sdk\\\\bsp/1699960579049"
webtalk_add_data -client sdk -key hwid -value "1699936321613" -context "sdk\\\\bsp/1699960579049"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1699960579049"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\bsp/1699960579049"
webtalk_add_data -client sdk -key RecordType -value "BSPCreation" -context "sdk\\\\bsp/1699960579049"
webtalk_add_data -client sdk -key uid -value "1699960580272" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key hwid -value "1699936321613" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key bspid -value "1699960579049" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key newbsp -value "true" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key RecordType -value "APPCreation" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key LangUsed -value "C" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key Procused -value "ps7_cortexa9" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key projSize -value "385.01953125" -context "sdk\\\\application/1699960580272"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key DebugCount -value "1" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1699961714447"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1699961714447"
webtalk_transmit -clientid 1441469910 -regid "211578208_1777537401_210688999_346" -xml D:\\Drive_D\\ELD2023\\Lab10\\Lab10.sdk\\webtalk\\usage_statistics_ext_sdk.xml -html D:\\Drive_D\\ELD2023\\Lab10\\Lab10.sdk\\webtalk\\usage_statistics_ext_sdk.html -wdm D:\\Drive_D\\ELD2023\\Lab10\\Lab10.sdk\\webtalk\\sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
