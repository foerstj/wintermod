:: path of Bits dir
set bits=%~dp0.

pushd %gaspy%
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%"
if %errorlevel% neq 0 pause
popd
