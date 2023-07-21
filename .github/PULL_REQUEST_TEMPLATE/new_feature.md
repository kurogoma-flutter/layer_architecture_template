name: 新機能 PR
description: 新機能のための PR
body:
  - type: markdown
    attributes:
      value: |
        プルリクエスト概要
  - type: input
    id: related-issue
    attributes:
      label: 関連する Issue
      description: "この新機能に対する Issue が存在しない場合、作成してください。"
      placeholder: "#12"
    validations:
      required: true
  - type: textarea
    id: feature-description
    attributes:
      label: 新機能の説明
      description: "追加した新機能について説明してください。"
      placeholder: "ここに新機能を説明してください"
    validations:
      required: true
