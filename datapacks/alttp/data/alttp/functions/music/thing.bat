@ECHO OFF
PUSHD .
FOR /R %%d IN (.) DO (
cd "%%d"
IF EXIST *.ogg (
REN *.ogg *.mcfunction
)
)
POPD