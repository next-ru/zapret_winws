@rem THIS BATCH FILE REQUIRES MANUAL EDIT
@rem SERVICE INSTALL IS COMMENTED TO PREVENT SCRIPT KIDDIES FROM DAMAGING THEIR SYSTEMS WITHOUT KNOWING HOW TO RECOVER
@rem ���� ���� ������� ��������������
@rem ��������� ������ ����������������, ����� �������� ������ �� ���������� ����������� �� ��� ������ �� �������, ������� ��� �� � ��������� ������
@rem ���� ������ �� ��������� - �� �������� ���� ����, ���������� �� ������������� ������. ����� ������ ������ ����� ������� "� ���� ������ �������� , ��� ������������"

set WINWS1=--wf-l3=ipv4,ipv6 --wf-tcp=80,443 --dpi-desync=fake,fakedsplit --dpi-desync-ttl=7 --dpi-desync-fooling=md5sig
rem schtasks /Create /F /TN winws1 /NP /RU "" /SC onstart /TR "\"%~dp0winws.exe\" %WINWS1%"
rem set WINWS2=--wf-l3=ipv4,ipv6 --wf-udp=443 --dpi-desync=fake
rem schtasks /Create /F /TN winws2 /NP /RU "" /SC onstart /TR "\"%~dp0winws.exe\" %WINWS2%"
