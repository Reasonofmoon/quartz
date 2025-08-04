@echo off
chcp 65001 >nul
echo.
echo ================================================
echo  🌱 'my-blog/content' 폴더 구조 정리 시작
echo ================================================
echo.

REM content 폴더로 이동
echo 📁 content 폴더로 이동합니다...
cd "content"
echo.

REM 기본 카테고리 폴더 생성
echo 📁 주요 카테고리 폴더를 생성합니다...
mkdir "01-개발" 2>nul
mkdir "02-지식관리" 2>nul
mkdir "03-교육" 2>nul
mkdir "meta" 2>nul
echo    - 01-개발
echo    - 02-지식관리
echo    - 03-교육
echo    - meta (템플릿 등)
echo.

REM 카테고리별 세부 폴더 생성
echo 📁 세부 주제 폴더들을 생성합니다...
mkdir "01-개발\도구" 2>nul
mkdir "01-개발\언어" 2>nul
mkdir "01-개발\설계" 2>nul
echo    - '개발' 카테고리 하위 폴더 생성 완료
mkdir "02-지식관리\방법론" 2>nul
mkdir "02-지식관리\도구" 2>nul
mkdir "02-지식관리\독서" 2>nul
echo    - '지식관리' 카테고리 하위 폴더 생성 완료
mkdir "03-교육\교수법" 2>nul
mkdir "03-교육\학습법" 2>nul
echo    - '교육' 카테고리 하위 폴더 생성 완료
mkdir "meta\templates" 2>nul
echo    - 'meta' 카테고리 하위 폴더 생성 완료
echo.

REM 카테고리별 소개 파일 생성 (_category_.md)
echo 📝 카테고리별 소개 파일을 생성합니다...

(
    echo ---
    echo title: "💻 개발"
    echo linkTitle: "개발"
    echo ---
    echo # 💻 개발 - 코드로 세상을 바꾸는 여정
    echo > "좋은 코드는 시를 닮았다. 간결하지만 깊은 의미를 담고 있다"
) > "01-개발\_category_.md"

(
    echo ---
    echo title: "🧠 지식관리"
    echo linkTitle: "지식관리"
    echo ---
    echo # 🧠 지식관리 - 배움을 체계화하고 연결하는 기술
    echo > "정보는 많지만 지혜는 부족한 시대, 체계적인 지식 관리가 경쟁력이다"
) > "02-지식관리\_category_.md"

(
    echo ---
    echo title: "🎓 교육"
    echo linkTitle: "교육"
    echo ---
    echo # 🎓 교육 - 가르치고 배우는 기술의 모든 것
    echo > "가장 좋은 학습은 가르치는 것이고, 가장 좋은 가르침은 함께 배우는 것이다"
) > "03-교육\_category_.md"

echo    - 카테고리 소개 파일 생성 완료.
echo.

REM 기본 노트 템플릿 생성
echo 📝 기본 노트 템플릿을 생성합니다...
(
    echo ---
    echo title: "{{title}}"
    echo date: "{{date}}"
    echo description: "이 글의 핵심 내용을 한 줄로 요약합니다."
    echo tags:
    echo   - 카테고리
    echo   - 주제
    echo ---
    echo 
    echo # {{title}}
    echo 
    echo > 이 글의 핵심 아이디어를 한 문장으로 요약합니다.
    echo 
    echo ---
    echo 
    echo ## 🎯 핵심 개념
    echo 
    echo *이 노트에서 다루는 가장 중요한 개념이나 아이디어*
    echo 
    echo ---
    echo 
    echo ## 🔗 연결된 지식
    echo 
    echo - [[다른-노트-링크]]
) > "meta\templates\note-template.md"
echo    - 노트 템플릿 생성 완료.
echo.

echo ------------------------------------------------
echo ✅ 'content' 폴더 정리가 완료되었습니다!
echo ------------------------------------------------
echo.
echo 🚀 다음 단계:
echo   1. 기존 마크다운 파일들을 새로 생긴 카테고리 폴더로 옮기세요.
echo   2. 'publish.bat' 파일을 실행하여 블로그에 변경사항을 반영하세요.
echo.

REM 원래 위치로 복귀
cd ..

pause