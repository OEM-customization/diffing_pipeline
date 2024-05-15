.class public enum Ljava/awt/font/NumericShaper$Range;
.super Ljava/lang/Enum;
.source "NumericShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/NumericShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api BALINESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api BENGALI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api CHAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api EUROPEAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api GUJARATI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api GURMUKHI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api JAVANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api KANNADA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api KHMER:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api LAO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api LEPCHA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api LIMBU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api MALAYALAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api MYANMAR:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api NKO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api ORIYA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api SUNDANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api TAMIL:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api TELUGU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api THAI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api TIBETAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist test-api VAI:Ljava/awt/font/NumericShaper$Range;


# instance fields
.field private final greylist-max-o base:I

.field private final greylist-max-o end:I

.field private final greylist-max-o start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 47

    .line 168
    new-instance v6, Ljava/awt/font/NumericShaper$Range;

    const-string v1, "EUROPEAN"

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/16 v5, 0x300

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    .line 172
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "ARABIC"

    const/4 v9, 0x1

    const/16 v10, 0x660

    const/16 v11, 0x600

    const/16 v12, 0x780

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    .line 176
    new-instance v1, Ljava/awt/font/NumericShaper$Range;

    const-string v14, "EASTERN_ARABIC"

    const/4 v15, 0x2

    const/16 v16, 0x6f0

    const/16 v17, 0x600

    const/16 v18, 0x780

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    .line 180
    new-instance v2, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "DEVANAGARI"

    const/4 v9, 0x3

    const/16 v10, 0x966

    const/16 v11, 0x900

    const/16 v12, 0x980

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    .line 184
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string v14, "BENGALI"

    const/4 v15, 0x4

    const/16 v16, 0x9e6

    const/16 v17, 0x980

    const/16 v18, 0xa00

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    .line 188
    new-instance v4, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "GURMUKHI"

    const/4 v9, 0x5

    const/16 v10, 0xa66

    const/16 v11, 0xa00

    const/16 v12, 0xa80

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    .line 192
    new-instance v5, Ljava/awt/font/NumericShaper$Range;

    const-string v14, "GUJARATI"

    const/4 v15, 0x6

    const/16 v16, 0xae6

    const/16 v17, 0xb00

    const/16 v18, 0xb80

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    .line 196
    new-instance v13, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "ORIYA"

    const/4 v9, 0x7

    const/16 v10, 0xb66

    const/16 v11, 0xb00

    const/16 v12, 0xb80

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    .line 200
    new-instance v7, Ljava/awt/font/NumericShaper$Range;

    const-string v15, "TAMIL"

    const/16 v16, 0x8

    const/16 v17, 0xbe6

    const/16 v19, 0xc00

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    .line 204
    new-instance v8, Ljava/awt/font/NumericShaper$Range;

    const-string v21, "TELUGU"

    const/16 v22, 0x9

    const/16 v23, 0xc66

    const/16 v24, 0xc00

    const/16 v25, 0xc80

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    .line 208
    new-instance v9, Ljava/awt/font/NumericShaper$Range;

    const-string v15, "KANNADA"

    const/16 v16, 0xa

    const/16 v17, 0xce6

    const/16 v18, 0xc80

    const/16 v19, 0xd00

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    .line 212
    new-instance v10, Ljava/awt/font/NumericShaper$Range;

    const-string v21, "MALAYALAM"

    const/16 v22, 0xb

    const/16 v23, 0xd66

    const/16 v24, 0xd00

    const/16 v25, 0xd80

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v10, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    .line 216
    new-instance v11, Ljava/awt/font/NumericShaper$Range;

    const-string v15, "THAI"

    const/16 v16, 0xc

    const/16 v17, 0xe50

    const/16 v18, 0xe00

    const/16 v19, 0xe80

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v11, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    .line 220
    new-instance v12, Ljava/awt/font/NumericShaper$Range;

    const-string v21, "LAO"

    const/16 v22, 0xd

    const/16 v23, 0xed0

    const/16 v24, 0xe80

    const/16 v25, 0xf00

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v12, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    .line 224
    new-instance v20, Ljava/awt/font/NumericShaper$Range;

    const-string v15, "TIBETAN"

    const/16 v16, 0xe

    const/16 v17, 0xf20

    const/16 v18, 0xf00

    const/16 v19, 0x1000

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v20, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    .line 228
    new-instance v14, Ljava/awt/font/NumericShaper$Range;

    const-string v22, "MYANMAR"

    const/16 v23, 0xf

    const/16 v24, 0x1040

    const/16 v25, 0x1000

    const/16 v26, 0x1080

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v14, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    .line 234
    new-instance v15, Ljava/awt/font/NumericShaper$Range$1;

    const-string v28, "ETHIOPIC"

    const/16 v29, 0x10

    const/16 v30, 0x1369

    const/16 v31, 0x1200

    const/16 v32, 0x1380

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Ljava/awt/font/NumericShaper$Range$1;-><init>(Ljava/lang/String;IIII)V

    sput-object v15, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    .line 241
    new-instance v16, Ljava/awt/font/NumericShaper$Range;

    const-string v22, "KHMER"

    const/16 v23, 0x11

    const/16 v24, 0x17e0

    const/16 v25, 0x1780

    const/16 v26, 0x1800

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v16, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    .line 245
    new-instance v17, Ljava/awt/font/NumericShaper$Range;

    const-string v28, "MONGOLIAN"

    const/16 v29, 0x12

    const/16 v30, 0x1810

    const/16 v31, 0x1800

    const/16 v32, 0x1900

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v17, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    .line 252
    new-instance v18, Ljava/awt/font/NumericShaper$Range;

    const-string v22, "NKO"

    const/16 v23, 0x13

    const/16 v24, 0x7c0

    const/16 v25, 0x7c0

    const/16 v26, 0x800

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v18, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    .line 256
    new-instance v19, Ljava/awt/font/NumericShaper$Range;

    const-string v28, "MYANMAR_SHAN"

    const/16 v29, 0x14

    const/16 v30, 0x1090

    const/16 v31, 0x1000

    const/16 v32, 0x10a0

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v19, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    .line 260
    new-instance v27, Ljava/awt/font/NumericShaper$Range;

    const-string v22, "LIMBU"

    const/16 v23, 0x15

    const/16 v24, 0x1946

    const/16 v25, 0x1900

    const/16 v26, 0x1950

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v27, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    .line 264
    new-instance v21, Ljava/awt/font/NumericShaper$Range;

    const-string v29, "NEW_TAI_LUE"

    const/16 v30, 0x16

    const/16 v31, 0x19d0

    const/16 v32, 0x1980

    const/16 v33, 0x19e0

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v21, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    .line 268
    new-instance v22, Ljava/awt/font/NumericShaper$Range;

    const-string v35, "BALINESE"

    const/16 v36, 0x17

    const/16 v37, 0x1b50

    const/16 v38, 0x1b00

    const/16 v39, 0x1b80

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v22, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    .line 272
    new-instance v23, Ljava/awt/font/NumericShaper$Range;

    const-string v29, "SUNDANESE"

    const/16 v30, 0x18

    const/16 v31, 0x1bb0

    const/16 v32, 0x1b80

    const/16 v33, 0x1bc0

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v23, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    .line 276
    new-instance v24, Ljava/awt/font/NumericShaper$Range;

    const-string v35, "LEPCHA"

    const/16 v36, 0x19

    const/16 v37, 0x1c40

    const/16 v38, 0x1c00

    const/16 v39, 0x1c50

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v24, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    .line 280
    new-instance v25, Ljava/awt/font/NumericShaper$Range;

    const-string v29, "OL_CHIKI"

    const/16 v30, 0x1a

    const/16 v31, 0x1c50

    const/16 v32, 0x1c50

    const/16 v33, 0x1c80

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v25, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    .line 284
    new-instance v26, Ljava/awt/font/NumericShaper$Range;

    const-string v35, "VAI"

    const/16 v36, 0x1b

    const v37, 0xa620

    const v38, 0xa500

    const v39, 0xa640

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v26, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    .line 288
    new-instance v34, Ljava/awt/font/NumericShaper$Range;

    const-string v29, "SAURASHTRA"

    const/16 v30, 0x1c

    const v31, 0xa8d0

    const v32, 0xa880

    const v33, 0xa8e0

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v34, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    .line 292
    new-instance v28, Ljava/awt/font/NumericShaper$Range;

    const-string v36, "KAYAH_LI"

    const/16 v37, 0x1d

    const v38, 0xa900

    const v39, 0xa900

    const v40, 0xa930

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v28, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    .line 296
    new-instance v29, Ljava/awt/font/NumericShaper$Range;

    const-string v42, "CHAM"

    const/16 v43, 0x1e

    const v44, 0xaa50

    const v45, 0xaa00

    const v46, 0xaa60

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v29, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    .line 300
    new-instance v30, Ljava/awt/font/NumericShaper$Range;

    const-string v36, "TAI_THAM_HORA"

    const/16 v37, 0x1f

    const/16 v38, 0x1a80

    const/16 v39, 0x1a20

    const/16 v40, 0x1ab0

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v30, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    .line 304
    new-instance v31, Ljava/awt/font/NumericShaper$Range;

    const-string v42, "TAI_THAM_THAM"

    const/16 v43, 0x20

    const/16 v44, 0x1a90

    const/16 v45, 0x1a20

    const/16 v46, 0x1ab0

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v31, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    .line 308
    new-instance v32, Ljava/awt/font/NumericShaper$Range;

    const-string v36, "JAVANESE"

    const/16 v37, 0x21

    const v38, 0xa9d0

    const v39, 0xa980

    const v40, 0xa9e0

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v32, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    .line 312
    new-instance v33, Ljava/awt/font/NumericShaper$Range;

    const-string v42, "MEETEI_MAYEK"

    const/16 v43, 0x22

    const v44, 0xabf0

    const v45, 0xabc0

    const v46, 0xac00

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v33, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    .line 162
    move-object/from16 v35, v15

    const/16 v15, 0x23

    new-array v15, v15, [Ljava/awt/font/NumericShaper$Range;

    const/16 v36, 0x0

    aput-object v6, v15, v36

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v35, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    sput-object v15, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 6
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result p1

    add-int/lit8 p1, p1, 0x30

    sub-int p1, p3, p1

    iput p1, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    .line 353
    iput p4, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    .line 354
    iput p5, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    .line 355
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILjava/awt/font/NumericShaper$1;)V
    .registers 7
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/awt/font/NumericShaper$1;

    .line 162
    invoke-direct/range {p0 .. p5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic blacklist access$100(Ljava/awt/font/NumericShaper$Range;I)Z
    .registers 3
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;
    .param p1, "x1"    # I

    .line 162
    invoke-direct {p0, p1}, Ljava/awt/font/NumericShaper$Range;->inRange(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;

    .line 162
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    return v0
.end method

.method static synthetic blacklist access$300(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;

    .line 162
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;

    .line 162
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    return v0
.end method

.method static synthetic blacklist access$500(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;

    .line 162
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$600(I)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # I

    .line 162
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->maskToRangeSet(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$700(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "x0"    # Ljava/awt/font/NumericShaper$Range;

    .line 162
    invoke-direct {p0}, Ljava/awt/font/NumericShaper$Range;->getDigitBase()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$800(I)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "x0"    # I

    .line 162
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->indexToRange(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Ljava/util/Set;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/Set;

    .line 162
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeMask(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getDigitBase()I
    .registers 2

    .line 358
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    return v0
.end method

.method private greylist-max-o inRange(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 366
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static greylist-max-o indexToRange(I)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "index"    # I

    .line 320
    const/16 v0, 0x13

    if-ge p0, v0, :cond_b

    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private static greylist-max-o maskToRangeSet(I)Ljava/util/Set;
    .registers 5
    .param p0, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    .line 335
    const-class v0, Ljava/awt/font/NumericShaper$Range;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 336
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v1

    .line 337
    .local v1, "a":[Ljava/awt/font/NumericShaper$Range;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/16 v3, 0x13

    if-ge v2, v3, :cond_1c

    .line 338
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, p0

    if-eqz v3, :cond_19

    .line 339
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 342
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method

.method private static greylist-max-o toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I
    .registers 3
    .param p0, "script"    # Ljava/awt/font/NumericShaper$Range;

    .line 315
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper$Range;->ordinal()I

    move-result v0

    .line 316
    .local v0, "index":I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    const/4 v1, -0x1

    :goto_b
    return v1
.end method

.method private static greylist-max-o toRangeMask(Ljava/util/Set;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)I"
        }
    .end annotation

    .line 324
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    const/4 v0, 0x0

    .line 325
    .local v0, "m":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/font/NumericShaper$Range;

    .line 326
    .local v2, "range":Ljava/awt/font/NumericShaper$Range;
    invoke-virtual {v2}, Ljava/awt/font/NumericShaper$Range;->ordinal()I

    move-result v3

    .line 327
    .local v3, "index":I
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1c

    .line 328
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    .line 330
    .end local v2    # "range":Ljava/awt/font/NumericShaper$Range;
    .end local v3    # "index":I
    :cond_1c
    goto :goto_5

    .line 331
    :cond_1d
    return v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Ljava/awt/font/NumericShaper$Range;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/awt/font/NumericShaper$Range;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/awt/font/NumericShaper$Range;
    .registers 1

    .line 162
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    invoke-virtual {v0}, [Ljava/awt/font/NumericShaper$Range;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/font/NumericShaper$Range;

    return-object v0
.end method


# virtual methods
.method greylist-max-o getNumericBase()C
    .registers 2

    .line 362
    const/4 v0, 0x0

    return v0
.end method
