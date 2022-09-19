---
title: "subword tokenize algorithm"
date: 2017-10-20 14:07:00 +0900
categories: NLP, BERT
---

## BPE encoding

byte pair encoding

1. 빈도수와 함께 주어진 corpus 에서 단어 추출(white space 기준)
2. vocab(어휘사전) 크기 정의
3. 단어를 문자 시퀀스로 분할
4. 문자 시퀀스의 모든 고유 문자를 vocab에 추가(중복처리)
5. 빈도가 높은 문자(char) 쌍을 concat(병합, 합침)
6. vocab 크기를 정의한 만큼 반복

## BBPE

byte-level byte pair encoding

BPE 와 동일한데 문자 단위가 아니라 byte 기준
(영문의 경우 하나의 문자가 1byte 한글은 2byte, utf-8 일경우 1~4 byte, 다국어 버전에서 유리함)

## wordpiece

BPE 는 고빈도 문자를 병합 하지만
wordpiece 는 가능도를가 높은 문자를 병합한다.
