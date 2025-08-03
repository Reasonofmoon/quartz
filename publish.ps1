Write-Host "🚀 달의이성 블로그 발행 시작..." -ForegroundColor Green
Write-Host "🌐 배포 URL: https://reason-blog.pages.dev" -ForegroundColor Cyan
Write-Host ""

Write-Host "📝 변경된 파일들:" -ForegroundColor Yellow
git status --short
Write-Host ""

$commitMsg = Read-Host "커밋 메시지를 입력하세요 (엔터=기본)"
if ([string]::IsNullOrEmpty($commitMsg)) {
    $commitMsg = "블로그 업데이트: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
}

Write-Host "🔨 로컬 빌드 테스트..." -ForegroundColor Yellow
npx quartz build
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ 빌드 실패! 오류를 확인하세요." -ForegroundColor Red
    Read-Host "계속하려면 엔터를 누르세요"
    exit 1
}

Write-Host "✅ 빌드 성공!" -ForegroundColor Green
Write-Host "📤 GitHub에 업로드 중..." -ForegroundColor Yellow
git add .
git commit -m $commitMsg
git push origin v4

Write-Host "✅ 발행 완료!" -ForegroundColor Green
Write-Host "🌐 2-3분 후 https://reason-blog.pages.dev 에서 확인하세요" -ForegroundColor Cyan
Read-Host "계속하려면 엔터를 누르세요"