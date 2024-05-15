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

.field public static final enum whitelist core-platform-api test-api ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api BALINESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api BENGALI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api CHAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api EUROPEAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api GUJARATI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api GURMUKHI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api JAVANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api KANNADA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api KHMER:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api LAO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api LEPCHA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api LIMBU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api MALAYALAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api MYANMAR:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api NKO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api ORIYA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api SUNDANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api TAMIL:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api TELUGU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api THAI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api TIBETAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum whitelist core-platform-api test-api VAI:Ljava/awt/font/NumericShaper$Range;


# instance fields
.field private final greylist-max-o base:I

.field private final greylist-max-o end:I

.field private final greylist-max-o start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

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
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "EASTERN_ARABIC"

    const/4 v3, 0x2

    const/16 v4, 0x6f0

    const/16 v5, 0x600

    const/16 v6, 0x780

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    .line 180
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "DEVANAGARI"

    const/4 v9, 0x3

    const/16 v10, 0x966

    const/16 v11, 0x900

    const/16 v12, 0x980

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    .line 184
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "BENGALI"

    const/4 v3, 0x4

    const/16 v4, 0x9e6

    const/16 v5, 0x980

    const/16 v6, 0xa00

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    .line 188
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "GURMUKHI"

    const/4 v9, 0x5

    const/16 v10, 0xa66

    const/16 v11, 0xa00

    const/16 v12, 0xa80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    .line 192
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "GUJARATI"

    const/4 v3, 0x6

    const/16 v4, 0xae6

    const/16 v5, 0xb00

    const/16 v6, 0xb80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    .line 196
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "ORIYA"

    const/4 v9, 0x7

    const/16 v10, 0xb66

    const/16 v11, 0xb00

    const/16 v12, 0xb80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    .line 200
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "TAMIL"

    const/16 v3, 0x8

    const/16 v4, 0xbe6

    const/16 v5, 0xb80

    const/16 v6, 0xc00

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    .line 204
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "TELUGU"

    const/16 v9, 0x9

    const/16 v10, 0xc66

    const/16 v11, 0xc00

    const/16 v12, 0xc80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    .line 208
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "KANNADA"

    const/16 v3, 0xa

    const/16 v4, 0xce6

    const/16 v5, 0xc80

    const/16 v6, 0xd00

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    .line 212
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "MALAYALAM"

    const/16 v9, 0xb

    const/16 v10, 0xd66

    const/16 v11, 0xd00

    const/16 v12, 0xd80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    .line 216
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "THAI"

    const/16 v3, 0xc

    const/16 v4, 0xe50

    const/16 v5, 0xe00

    const/16 v6, 0xe80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    .line 220
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "LAO"

    const/16 v9, 0xd

    const/16 v10, 0xed0

    const/16 v11, 0xe80

    const/16 v12, 0xf00

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    .line 224
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "TIBETAN"

    const/16 v3, 0xe

    const/16 v4, 0xf20

    const/16 v5, 0xf00

    const/16 v6, 0x1000

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    .line 228
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "MYANMAR"

    const/16 v9, 0xf

    const/16 v10, 0x1040

    const/16 v11, 0x1000

    const/16 v12, 0x1080

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    .line 234
    new-instance v0, Ljava/awt/font/NumericShaper$Range$1;

    const-string v2, "ETHIOPIC"

    const/16 v3, 0x10

    const/16 v4, 0x1369

    const/16 v5, 0x1200

    const/16 v6, 0x1380

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range$1;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    .line 241
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "KHMER"

    const/16 v9, 0x11

    const/16 v10, 0x17e0

    const/16 v11, 0x1780

    const/16 v12, 0x1800

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    .line 245
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "MONGOLIAN"

    const/16 v3, 0x12

    const/16 v4, 0x1810

    const/16 v5, 0x1800

    const/16 v6, 0x1900

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    .line 252
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "NKO"

    const/16 v9, 0x13

    const/16 v10, 0x7c0

    const/16 v11, 0x7c0

    const/16 v12, 0x800

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    .line 256
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "MYANMAR_SHAN"

    const/16 v3, 0x14

    const/16 v4, 0x1090

    const/16 v5, 0x1000

    const/16 v6, 0x10a0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    .line 260
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "LIMBU"

    const/16 v9, 0x15

    const/16 v10, 0x1946

    const/16 v11, 0x1900

    const/16 v12, 0x1950

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    .line 264
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "NEW_TAI_LUE"

    const/16 v3, 0x16

    const/16 v4, 0x19d0

    const/16 v5, 0x1980

    const/16 v6, 0x19e0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    .line 268
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "BALINESE"

    const/16 v9, 0x17

    const/16 v10, 0x1b50

    const/16 v11, 0x1b00

    const/16 v12, 0x1b80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    .line 272
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "SUNDANESE"

    const/16 v3, 0x18

    const/16 v4, 0x1bb0

    const/16 v5, 0x1b80

    const/16 v6, 0x1bc0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    .line 276
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "LEPCHA"

    const/16 v9, 0x19

    const/16 v10, 0x1c40

    const/16 v11, 0x1c00

    const/16 v12, 0x1c50

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    .line 280
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "OL_CHIKI"

    const/16 v3, 0x1a

    const/16 v4, 0x1c50

    const/16 v5, 0x1c50

    const/16 v6, 0x1c80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    .line 284
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "VAI"

    const/16 v9, 0x1b

    const v10, 0xa620

    const v11, 0xa500

    const v12, 0xa640

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    .line 288
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "SAURASHTRA"

    const/16 v3, 0x1c

    const v4, 0xa8d0

    const v5, 0xa880

    const v6, 0xa8e0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    .line 292
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "KAYAH_LI"

    const/16 v9, 0x1d

    const v10, 0xa900

    const v11, 0xa900

    const v12, 0xa930

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    .line 296
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "CHAM"

    const/16 v3, 0x1e

    const v4, 0xaa50

    const v5, 0xaa00

    const v6, 0xaa60

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    .line 300
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "TAI_THAM_HORA"

    const/16 v9, 0x1f

    const/16 v10, 0x1a80

    const/16 v11, 0x1a20

    const/16 v12, 0x1ab0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    .line 304
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "TAI_THAM_THAM"

    const/16 v3, 0x20

    const/16 v4, 0x1a90

    const/16 v5, 0x1a20

    const/16 v6, 0x1ab0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    .line 308
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v8, "JAVANESE"

    const/16 v9, 0x21

    const v10, 0xa9d0

    const v11, 0xa980

    const v12, 0xa9e0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    .line 312
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string v2, "MEETEI_MAYEK"

    const/16 v3, 0x22

    const v4, 0xabf0

    const v5, 0xabc0

    const v6, 0xac00

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    .line 162
    const/16 v1, 0x23

    new-array v1, v1, [Ljava/awt/font/NumericShaper$Range;

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const/16 v2, 0x22

    aput-object v0, v1, v2

    sput-object v1, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

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

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Ljava/awt/font/NumericShaper$Range;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/awt/font/NumericShaper$Range;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/awt/font/NumericShaper$Range;
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
