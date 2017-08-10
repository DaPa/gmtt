include gmtt.mk

#-gmtt-dbg-info := t

$(call -gmtt-test,$$(call -sgnxt-merge,0 1 1 0,3,-,),00 10 10 03)
$(call -gmtt-test,$$(call -sgnxt-merge,0 1 1 0,3,-,-),0f 1f 1f 03)
$(call -gmtt-test,$$(call -sgnxt-merge,0 1 1 0,3,,-),0f 1f 1f 03)
$(call -gmtt-test,$$(call -sgnxt-merge,0 1,1 0 3,,),01 00 13)
$(call -gmtt-test,$$(call -sgnxt-merge,0 1,1 0 3,-,),f1 00 13)
$(call -gmtt-test,$$(call -shift-merge,0,0),00)
$(call -gmtt-test,$$(call -shift-merge,1 1,2),10 12)
$(call -gmtt-test,$$(call -shift-merge,1,2 2),02 12)
$(call -gmtt-test,$$(call -shift-merge,1 1 1 1 1 1 1 1 1,2),10 10 10 10 10 10 10 10 12)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,0,0)),0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,0,1)),1)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1,0)),1)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1,1)),2)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1 0,0)),1 0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1 0,1 0)),2 0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1,9)),1 0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,9,9)),1 8)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,9 9 9 9 9,1)),1 0 0 0 0 0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1,9 9 9 9 9)),1 0 0 0 0 0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,9 9 9 9 9,9 9 9)),1 0 0 9 9 8)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,9 9 9,9 9 9 9 9)),1 0 0 9 9 8)
$(call -gmtt-test,$$(call -add16,$(call -shift-merge,f f f,f f f f)),1 0 f f e)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,0,0)),0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1,0)),1)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1,1)),0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0,0)),1 0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0,1 0)),0 0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0,9)),0 1)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,9,9)),0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,9 9 9 9 9,1)),9 9 9 9 8)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,9 9 9 8 8,9 9 9)),9 8 9 8 9)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,9 9 8 9 9,9 9 9)),9 8 9 0 0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0 0 0 0 1,9 9 9 9 9)),0 0 0 0 0 2)
$(call -gmtt-test,$$(call -sub16,$(call -shift-merge,1 0 0 0 0 1,f f f f f)),0 0 0 0 0 2)
$(call -gmtt-test,$$(call -nrmlz,000123),123)
$(call -gmtt-test,$$(call -nrmlz,000abed),abed)
$(call -gmtt-test,$$(call -nrmlz,124),124)
$(call -gmtt-test,$$(call -nrmlz,deadbeef),deadbeef)
$(call -gmtt-test,$$(call -umul10,12,8),96)
$(call -gmtt-test,$$(call -umul10,1,8),8)
$(call -gmtt-test,$$(call -umul10,0,8),0)
$(call -gmtt-test,$$(call -umul10,1,1),1)
$(call -gmtt-test,$$(call -umul10,10,0),0)
$(call -gmtt-test,$$(call -umul10,23489723,7),164428061)
$(call -gmtt-test,$$(call -umul10,00012,8),96)
$(call -gmtt-test,$$(call -umul10,12,0008),96)
$(call -gmtt-test,$$(call -uadd10,111,999),1110)
$(call -gmtt-test,$$(call -uadd10,111,00999),1110)
$(call -gmtt-test,$$(call -uadd10,00111,999),1110)
$(call -gmtt-test,$$(call -usub10,9111,999),8112)
$(call -gmtt-test,$$(call -usub10,9111,00999),8112)
$(call -gmtt-test,$$(call -usub10,009111,999),8112)
$(call -gmtt-test,$$(call -ucmp,0,0),=)
$(call -gmtt-test,$$(call -ucmp,0,1),<)
$(call -gmtt-test,$$(call -ucmp,1,0),>)
$(call -gmtt-test,$$(call -ucmp,1,1),=)
$(call -gmtt-test,$$(call -ucmp,1 0,0),>)
$(call -gmtt-test,$$(call -ucmp,0,1 0),<)
$(call -gmtt-test,$$(call -ucmp,1 0,9),>)
$(call -gmtt-test,$$(call -ucmp,9,1 0),<)
$(call -gmtt-test,$$(call -ucmp,1 1,9 9),<)
$(call -gmtt-test,$$(call -ucmp,1 2 3,1 2 3 0),<)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1 0,1)),1 1)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,0,0)),0)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1,0)),1)
$(call -gmtt-test,$$(call -add10,$(call -shift-merge,1 0 0 0,9)),1 0 0 9)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0,1)),0 9)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,0,0)),0)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1,0)),1)
$(call -gmtt-test,$$(call -sub10,$(call -shift-merge,1 0 0 0,9)),0 9 9 1)
$(call -gmtt-test,$$(call --mul10-7,1 4 2 8 5 7 1 4 2 8 5 7 1 4 2 8 5 7 1 9),1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3)
$(call -gmtt-test,$$(call --mul10-9,1 1 1 1 1 1 1 1 1 9),1 0 0 0 0 0 0 0 0 7 1)
$(call -gmtt-test,$$(call --mul10-0,1 9 9 1),0 0 0 0)
$(call -gmtt-test,$$(call --mul10-1,1 9 9 1),1 9 9 1)
$(call -gmtt-test,$$(call --mul10-2,5 9 9 1),1 1 9 8 2)
$(call -gmtt-test,$$(call --mul10-3,5 9 9 1),1 7 9 7 3)
$(call -gmtt-test,$$(call --mul10-4,5 9 9 1),2 3 9 6 4)
$(call -gmtt-test,$$(call --mul10-5,5 9 9 1),2 9 9 5 5)
$(call -gmtt-test,$$(call --mul10-6,5 9 9 1),3 5 9 4 6)
$(call -gmtt-test,$$(call --mul10-7,5 9 9 1),4 1 9 3 7)
$(call -gmtt-test,$$(call --mul10-8,5 9 9 1),4 7 9 2 8)
$(call -gmtt-test,$$(call --mul10-9,5 9 9 1),5 3 9 1 9)
$(call -gmtt-test,$$(call --mul10-4,7 7 7),3 1 0 8)
$(call -gmtt-test,$$(call --mul10-7,7 8 7),5 5 0 9)
$(call -gmtt-test,$$(call --mul10-3,3 9),1 1 7)
$(call -gmtt-test,$$(call -udivcmp,1 0,1),eq)
$(call -gmtt-test,$$(call -udivcmp,1 0,1 0),eq)
$(call -gmtt-test,$$(call -udivcmp,1 0,1 1),z)
$(call -gmtt-test,$$(call -udivcmp,2,1),)
$(call -gmtt-test,$$(call -udivcmp,2 0,1 0),)
$(call -gmtt-test,$$(call -udivcmp,2 0,9),z)
$(call -gmtt-test,$$(call -16to10,f f),2 5 5)
$(call -gmtt-test,$$(call -16to10,1 1),1 7)
$(call -gmtt-test,$$(call -16to10,0 0 0 1 2),1 8)
$(call -gmtt-test,$$(call -16to10,0),0)
$(call -gmtt-test,$$(call -8to10,1 2 3 4),6 6 8)
$(call -gmtt-test,$$(call -8to10,1 1),9)
$(call -gmtt-test,$$(call -10to16,1 2 3 4),4 d 2)
$(call -gmtt-test,$$(call -10to16,8 1 9 1),1 f f f)
$(call -gmtt-test,$$(call -10to16,1),1)
$(call -gmtt-test,$$(call -10to8,1 2 3 4),2 3 2 2)
$(call -gmtt-test,$$(call -10to8,6 3),7 7)
$(call -gmtt-test,$$(call -10to8,1),1)
$(call -gmtt-test,$$(call -16to8,f f),3 7 7)
$(call -gmtt-test,$$(call -16to8,1 1),2 1)
$(call -gmtt-test,$$(call -8to16,1 2 3 4),2 9 c)
$(call -gmtt-test,$$(call -8to16,1 1),9)
$(call -gmtt-test,$$(call -bld-ix,1 2 3 4 5 6 7 8 9), 0 1 2 3 4 5 6 7 8)
$(call -gmtt-test,$$(call -bld-ix,1 2 3 4 5 6 7 8 9 10), 00 01 02 03 04 05 06 07 08 09)
$(call -gmtt-test,$$(call -bld-ix,1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19), 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18)
$(call -gmtt-test,$$(call -bld-ix,1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19,¤), ¤00 ¤01 ¤02 ¤03 ¤04 ¤05 ¤06 ¤07 ¤08 ¤09 ¤10 ¤11 ¤12 ¤13 ¤14 ¤15 ¤16 ¤17 ¤18)
$(call -gmtt-test,$$(call -onescompl16,8 8),7 7)
$(call -gmtt-test,$$(call -sub16,f8 f8),7 7)

$(info Testing external interfaces)
$(call -gmtt-test,$$(call str-eq,yes,no),)
$(call -gmtt-test,$$(call str-eq,yes ,yes),)
$(call -gmtt-test,$$(call str-eq,yes ,yes ),t)
$(call -gmtt-test,$$(call str-le,aaa,ab),t)
$(call -gmtt-test,$$(call str-le,   ab aa,aa),)
$(call -gmtt-test,$$(call str-le,aa,aa),t)
$(call -gmtt-test,$$(call str-le,aa,a),)
$(call -gmtt-test,$$(call str-le,a,),)
$(call -gmtt-test,$$(call str-le,,a),t)
$(call -gmtt-test,$$(call str-le,MacGyver John,Mac Gyver John),t)
$(call -gmtt-test,$$(call str-le,macgyver john,mac gyver john),)
$(call -gmtt-test,$$(call str-ge,aaa,ab),)
$(call -gmtt-test,$$(call str-ge,   ab aa,aa),t)
$(call -gmtt-test,$$(call str-ge,aa,aa),t)
$(call -gmtt-test,$$(call str-ge,aa,a),t)
$(call -gmtt-test,$$(call str-ge,a,),t)
$(call -gmtt-test,$$(call str-ge,,a),)
$(call -gmtt-test,$$(call str-ge,MacGyver John,Mac Gyver John),)
$(call -gmtt-test,$$(call str-ge,macgyver john,mac gyver john),t)
$(call -gmtt-test,$$(call str-match,Mickey%Mouse,Mickey Mouse),t)
$(call -gmtt-test,$$(call str-match,Mickey%,MickeyMouse),t)
$(call -gmtt-test,$$(call str-match,Mickey%,),)
$(call -gmtt-test,$$(call str-match,Mickey %ouse,Mickey Mouse),t)
$(call -gmtt-test,$$(call str-match,MickeyMouse,MickeyMouse%),t)
$(call -gmtt-test,$$(call str-match,,%),t)
$(call -gmtt-test,$$(call zero-ext,0x123,8),00000123)
$(call -gmtt-test,$$(call zero-ext,0x123,3),123)
$(call -gmtt-test,$$(call zero-ext,0x123,1),123)
$(call -gmtt-test,$$(call zero-ext,0x123,0),123)
$(call -gmtt-test,$$(call zero-ext,0x123),123)
$(call -gmtt-test,$$(call zero-ext,0x000123,8),00000123)
$(call -gmtt-test,$$(call zero-ext,0x000123,1),123)
$(call -gmtt-test,$$(call zero-ext,0x000123),123)
$(call -gmtt-test,$$(call mul,123,456),56088)
$(call -gmtt-test,$$(call mul,1,456),456)
$(call -gmtt-test,$$(call mul,999,111),110889)
$(call -gmtt-test,$$(call mul,-999,111),-110889)
$(call -gmtt-test,$$(call mul,999,-111),-110889)
$(call -gmtt-test,$$(call mul,0,-1),0)
$(call -gmtt-test,$$(call mul,999,999),998001)
$(call -gmtt-test,$$(call mul,12313,456),5614728)
$(call -gmtt-test,$$(call mul,0xfff,0xfff),0xffe001)
$(call -gmtt-test,$$(call mul,0x12313,0x456),0x4ee1462)
$(call -gmtt-test,$$(call mul,012313,0456),06103572)
$(call -gmtt-test,$$(call mul,123,0x456),136530)
$(call -gmtt-test,$$(call mul,01,456),0710)
$(call -gmtt-test,$$(call mul,0x999,111),0x42957)
$(call -gmtt-test,$$(call mul,-999,0111),-72927)
$(call -gmtt-test,$$(call mul,999,-111),-110889)
$(call -gmtt-test,$$(call log2,0),0)
$(call -gmtt-test,$$(call log2,1),1)
$(call -gmtt-test,$$(call log2,2),1)
$(call -gmtt-test,$$(call log2,5),3)
$(call -gmtt-test,$$(call log2,7),3)
$(call -gmtt-test,$$(call log2,0x80),7)
$(call -gmtt-test,$$(call bit-and,0xff,0x55),0x55)
$(call -gmtt-test,$$(call bit-and,0xf0,0x55),0x50)
$(call -gmtt-test,$$(call bit-and,077,0255),055)
$(call -gmtt-test,$$(call bit-xor,0xAA,0x55),0xff)
$(call -gmtt-test,$$(call bit-not,-0x88),0x87)
$(call -gmtt-test,$$(call add,12,-10),2)
$(call -gmtt-test,$$(call add,0x12,-0x10),0x2)
$(call -gmtt-test,$$(call add,012,017),031)
$(call -gmtt-test,$$(call add,-12,10),-2)
$(call -gmtt-test,$$(call add,-0x12,-0x10),-0x22)
$(call -gmtt-test,$$(call add,-0x12,0x0001e),0xc)
$(call -gmtt-test,$$(call add,012,-10),00)
$(call -gmtt-test,$$(call add,0x12,-010),0xa)
$(call -gmtt-test,$$(call add,12,017),27)
$(call -gmtt-test,$$(call add,-12,0x10),4)
$(call -gmtt-test,$$(call add,-0x1,01),0x0)
$(call -gmtt-test,$$(call sub,12,-10),22)
$(call -gmtt-test,$$(call sub,0x12,-0x10),0x22)
$(call -gmtt-test,$$(call sub,012,017),-05)
$(call -gmtt-test,$$(call sub,-12,10),-22)
$(call -gmtt-test,$$(call sub,-0x12,-0x10),-0x2)
$(call -gmtt-test,$$(call sub,-0x12,0x0001e),-0x30)
$(call -gmtt-test,$$(call sub,012,-10),024)
$(call -gmtt-test,$$(call sub,0x12,-010),0x1a)
$(call -gmtt-test,$$(call sub,12,017),-3)
$(call -gmtt-test,$$(call sub,-12,0x10),-28)
$(call -gmtt-test,$$(call sub,-0x1,-01),0x0)
$(call -gmtt-test,$$(call mul,-1,0),0)
$(call -gmtt-test,$$(call mul,-0x1,0),0x0)
$(call -gmtt-test,$$(call mul,03,-7),-025)
$(call -gmtt-test,$$(call mod,0x3f,16),0xf)
$(call -gmtt-test,$$(call mod,077,16),017)
$(call -gmtt-test,$$(call to-dec,10),10)
$(call -gmtt-test,$$(call to-dec,010),8)
$(call -gmtt-test,$$(call to-dec,0x10),16)
$(call -gmtt-test,$$(call to-dec,0),0)
$(call -gmtt-test,$$(call to-dec,-10),-10)
$(call -gmtt-test,$$(call to-hex,10),0xa)
$(call -gmtt-test,$$(call to-hex,010),0x8)
$(call -gmtt-test,$$(call to-hex,0x10),0x10)
$(call -gmtt-test,$$(call to-hex,0),0x0)
$(call -gmtt-test,$$(call to-hex,-10),-0xa)
$(call -gmtt-test,$$(call to-oct,10),012)
$(call -gmtt-test,$$(call to-oct,010),010)
$(call -gmtt-test,$$(call to-oct,0x10),020)
$(call -gmtt-test,$$(call to-oct,0),00)
$(call -gmtt-test,$$(call to-oct,-10),-012)
$(call -gmtt-test,$$(call div,610,55),11)
$(call -gmtt-test,$$(call div,61,55),1)
$(call -gmtt-test,$$(call div,1,1),1)
$(call -gmtt-test,$$(call div,6,6),1)
$(call -gmtt-test,$$(call div,5500,55),100)
$(call -gmtt-test,$$(call div,2200,55),40)
$(call -gmtt-test,$$(call div,99,1),99)
$(call -gmtt-test,$$(call div,9876543210,1),9876543210)
$(call -gmtt-test,$$(call div,9876543210,13),759734093)
$(call -gmtt-test,$$(call div,9876543210,-1),-9876543210)
$(call -gmtt-test,$$(call div,-9876543210,-13),759734093)
$(call -gmtt-test,$$(call div,246913578,2),123456789)
$(call -gmtt-test,$$(call div,400002,2),200001)
$(call -gmtt-test,$$(call div,1604938257,13),123456789)
$(call -gmtt-test,$$(call div,223092870,23),9699690)
$(call -gmtt-test,$$(call div,0x9876543210,-16),-0x987654321)
$(call -gmtt-test,$$(call div,9876543210,0x13),519818063)
$(call -gmtt-test,$$(call round-dn,0x1234,0x100),0x1200)
$(call -gmtt-test,$$(call round-dn,0x1234,0x1000),0x1000)
$(call -gmtt-test,$$(call round-dn,0x1234,256),0x1200)
$(call -gmtt-test,$$(call round-dn,0x1234,0x10000),0x0)
$(call -gmtt-test,$$(call round-up,0x1234,0x100),0x1300)
$(call -gmtt-test,$$(call round-up,0x1234,0x1000),0x2000)
$(call -gmtt-test,$$(call round-up,0x1234,256),0x1300)
$(call -gmtt-test,$$(call round-up,0x1234,0x10000),0x10000)
$(call -gmtt-test,$$(call fill-up,0x1234,0x100),0x12ff)
$(call -gmtt-test,$$(call fill-up,0x1234,0x1000),0x1fff)
$(call -gmtt-test,$$(call fill-up,0x1234,256),0x12ff)
$(call -gmtt-test,$$(call fill-up,0x1234,0x10000),0xffff)
$(call -gmtt-test,$$(call fill-up,0x123456,0),0xffffff)

define test-tbl =
3
x1-y2 x2-y2 x3-y2
x1-y1 x2-y1 x3-y1
x1-y3 x2-y3 x3-y3
endef

$(call -gmtt-test,$$(call sort-tbl,$$(test-tbl),$$$$1),3 x1-y1 x2-y1 x3-y1 x1-y2 x2-y2 x3-y2 x1-y3 x2-y3 x3-y3)
$(call -gmtt-test,$$(call rsort-tbl,$$(test-tbl),$$$$1),3 x1-y3 x2-y3 x3-y3 x1-y2 x2-y2 x3-y2 x1-y1 x2-y1 x3-y1)
$(call -gmtt-test,$$(call select,3 1 2,$$(test-tbl),$$$$(call str-eq,$$$$1,x1-y3)),x3-y3 x1-y3 x2-y3)

define test-tbl =
4
foo bar baz 11
foo bar baf 22
faa bar baz 33
endef

$(call -gmtt-test,$$(call select,3 1 2 3,$$(test-tbl),$$$$(call str-match,$$$$1,%oo)),baz foo bar baz baf foo bar baf)
ends-in-oo = $(call str-match,$1,%oo)
$(call -gmtt-test,$$(call select,3 1 2 3,$$(test-tbl),$$$$(call ends-in-oo,$$$$1)),baz foo bar baz baf foo bar baf)


$(call -gmtt-test,$$(call map-select,4 1 2 3,$$(test-tbl),$$$$(call str-match,$$$$1,%oo),$$$$(call mul,0x2,$$$$1) this:$$$$2 that:$$$$3 $$$$4),0x16 this:foo that:bar baz 0x2c this:foo that:bar baf)


$(info Tests finished.)



