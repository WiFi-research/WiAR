%i_j.data(i=1-16;j=1-30) transfer into csi_ai_j
files = dir('*.dat');
len=length(files);
for i=1:len
    oldname=files(i).name;
    newname=strcat('csi_a', oldname);
    command = ['rename' 32 oldname 32 newname];
    status = dos(command);
    if status == 0
        disp([oldname, ' �ѱ�������Ϊ ', newname]);
    else
        disp([oldname, ' ������ʧ��!']);
    end
end