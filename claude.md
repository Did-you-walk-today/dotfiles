# Claude Code 전역 설정

## 응답 규칙
- 모든 답변은 한국어로 작성
- 작업 완료 시 ✅ 이모지 사용
- 명령 실행 완료 후 반드시 보고서 작성 (무엇을 했는지, 결과, 다음 단계)
- 코드 수정 전 항상 현재 파일 구조 파악
- 에러 발생 시 원인 분석 후 해결 방법 2~3가지 제시

## 보고서 형식
명령이 끝나면 아래 형식으로 보고서 작성:
```
## 작업 보고서
- 작업 내용:
- 변경된 파일:
- 결과:
- 다음 단계:
```

## 웹 빌드 규칙 (Next.js 기준)
- 모든 페이지에 메타 태그 필수 (title, description, og 태그)
- canonical URL 설정
- robots.txt, sitemap.xml 항상 확인
- 자바스크립트 렌더링 이슈 주의 (SSR/SSG 우선)
- 페이지 로딩 속도 고려 (이미지 최적화, 불필요한 번들 제거)
- 구조화된 데이터(JSON-LD) 추가 권장

## SEO 체크리스트 (빌드 시 항상 확인)
- [ ] 페이지별 고유한 title, description
- [ ] og:title, og:description, og:image
- [ ] canonical 태그
- [ ] robots.txt 접근 허용 확인
- [ ] sitemap.xml 최신화
- [ ] h1 태그 하나만 사용
- [ ] 이미지 alt 속성
- [ ] 모바일 뷰포트 메타 태그

## 코드 작성 규칙
- 커밋 메시지는 영어로 (feat:, fix:, chore: 등 conventional commits 형식)
- .env 파일은 절대 커밋 금지, .env.example만 커밋
- node_modules 커밋 금지
- 함수/변수명은 camelCase, 컴포넌트명은 PascalCase
- 수정 후 빌드 에러 없는지 확인 후 보고

## 기술 스택
- 프레임워크: Next.js (App Router)
- 배포: Cloudflare Workers / Pages
- 스타일: Tailwind CSS
- 언어: JavaScript / TypeScript

## 자동화 파이프라인 규칙
- 스크립트 작성 시 에러 핸들링 필수
- 로그는 날짜/시간 포함
- API 호출 시 rate limit 고려
- 작업 완료 후 성공/실패 건수 요약 보고

## AdSense / 수익화 관련
- 페이지 콘텐츠 품질 우선 (광고보다 콘텐츠)
- 페이지 속도 저하 요소 최소화
- 사용자 경험 해치는 광고 배치 지양

## 프로젝트 목록 (참고용)
- gigworkertax.net — 1099 세금 계산기 (Next.js, Cloudflare)
- 콘텐츠 자동화 파이프라인 — YouTube/Shorts 7개 채널
- Distill — YouTube 영상 요약 서비스
