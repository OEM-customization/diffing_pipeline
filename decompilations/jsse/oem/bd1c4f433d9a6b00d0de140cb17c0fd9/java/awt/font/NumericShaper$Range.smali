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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/NumericShaper$Range$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/awt/font/NumericShaper$Range;

.field public static final enum ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum BALINESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum BENGALI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum CHAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

.field public static final enum EUROPEAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum GUJARATI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum GURMUKHI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum JAVANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KANNADA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum KHMER:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LAO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LEPCHA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum LIMBU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MALAYALAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MYANMAR:Ljava/awt/font/NumericShaper$Range;

.field public static final enum MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum NKO:Ljava/awt/font/NumericShaper$Range;

.field public static final enum OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum ORIYA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum SUNDANESE:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TAMIL:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TELUGU:Ljava/awt/font/NumericShaper$Range;

.field public static final enum THAI:Ljava/awt/font/NumericShaper$Range;

.field public static final enum TIBETAN:Ljava/awt/font/NumericShaper$Range;

.field public static final enum VAI:Ljava/awt/font/NumericShaper$Range;


# instance fields
.field private final base:I

.field private final end:I

.field private final start:I


# direct methods
.method static synthetic -get0(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "-this"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    return v0
.end method

.method static synthetic -get1(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "-this"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    return v0
.end method

.method static synthetic -get2(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "-this"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/awt/font/NumericShaper$Range;I)Z
    .registers 3
    .param p0, "-this"    # Ljava/awt/font/NumericShaper$Range;
    .param p1, "c"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/awt/font/NumericShaper$Range;->inRange(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "-this"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    invoke-direct {p0}, Ljava/awt/font/NumericShaper$Range;->getDigitBase()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/awt/font/NumericShaper$Range;)I
    .registers 2
    .param p0, "script"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/util/Set;)I
    .registers 2
    .param p0, "ranges"    # Ljava/util/Set;

    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->toRangeMask(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "index"    # I

    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->indexToRange(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(I)Ljava/util/Set;
    .registers 2
    .param p0, "mask"    # I

    .prologue
    invoke-static {p0}, Ljava/awt/font/NumericShaper$Range;->maskToRangeSet(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x1c50

    const/16 v10, 0x1000

    const/16 v9, 0xb80

    const/4 v2, 0x0

    .line 163
    new-instance v0, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v1, "EUROPEAN"

    .line 168
    const/16 v3, 0x30

    const/16 v5, 0x300

    move v4, v2

    .line 163
    invoke-direct/range {v0 .. v5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 168
    sput-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    .line 169
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "ARABIC"

    .line 172
    const/16 v6, 0x660

    const/16 v7, 0x600

    const/16 v8, 0x780

    move v5, v12

    .line 169
    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 172
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    .line 173
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "EASTERN_ARABIC"

    .line 176
    const/16 v6, 0x6f0

    const/16 v7, 0x600

    const/16 v8, 0x780

    .line 173
    const/4 v5, 0x2

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 176
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    .line 177
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "DEVANAGARI"

    .line 180
    const/16 v6, 0x966

    const/16 v7, 0x900

    const/16 v8, 0x980

    .line 177
    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 180
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    .line 181
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "BENGALI"

    .line 184
    const/16 v6, 0x9e6

    const/16 v7, 0x980

    const/16 v8, 0xa00

    .line 181
    const/4 v5, 0x4

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 184
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    .line 185
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "GURMUKHI"

    .line 188
    const/16 v6, 0xa66

    const/16 v7, 0xa00

    const/16 v8, 0xa80

    .line 185
    const/4 v5, 0x5

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 188
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    .line 189
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "GUJARATI"

    .line 192
    const/16 v6, 0xae6

    const/16 v7, 0xb00

    .line 189
    const/4 v5, 0x6

    move v8, v9

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 192
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    .line 193
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "ORIYA"

    .line 196
    const/16 v6, 0xb66

    const/16 v7, 0xb00

    .line 193
    const/4 v5, 0x7

    move v8, v9

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 196
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    .line 197
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "TAMIL"

    .line 200
    const/16 v6, 0xbe6

    const/16 v8, 0xc00

    .line 197
    const/16 v5, 0x8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 200
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    .line 201
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "TELUGU"

    .line 204
    const/16 v6, 0xc66

    const/16 v7, 0xc00

    const/16 v8, 0xc80

    .line 201
    const/16 v5, 0x9

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 204
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    .line 205
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "KANNADA"

    .line 208
    const/16 v6, 0xce6

    const/16 v7, 0xc80

    const/16 v8, 0xd00

    .line 205
    const/16 v5, 0xa

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 208
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    .line 209
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "MALAYALAM"

    .line 212
    const/16 v6, 0xd66

    const/16 v7, 0xd00

    const/16 v8, 0xd80

    .line 209
    const/16 v5, 0xb

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 212
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    .line 213
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "THAI"

    .line 216
    const/16 v6, 0xe50

    const/16 v7, 0xe00

    const/16 v8, 0xe80

    .line 213
    const/16 v5, 0xc

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 216
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    .line 217
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "LAO"

    .line 220
    const/16 v6, 0xed0

    const/16 v7, 0xe80

    const/16 v8, 0xf00

    .line 217
    const/16 v5, 0xd

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 220
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    .line 221
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "TIBETAN"

    .line 224
    const/16 v6, 0xf20

    const/16 v7, 0xf00

    .line 221
    const/16 v5, 0xe

    move v8, v10

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 224
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    .line 225
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "MYANMAR"

    .line 228
    const/16 v6, 0x1040

    const/16 v8, 0x1080

    .line 225
    const/16 v5, 0xf

    move v7, v10

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 228
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    .line 229
    new-instance v3, Ljava/awt/font/NumericShaper$Range$1;

    const-string/jumbo v4, "ETHIOPIC"

    .line 234
    const/16 v6, 0x1369

    const/16 v7, 0x1200

    const/16 v8, 0x1380

    .line 229
    const/16 v5, 0x10

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range$1;-><init>(Ljava/lang/String;IIII)V

    .line 234
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    .line 238
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "KHMER"

    .line 241
    const/16 v6, 0x17e0

    const/16 v7, 0x1780

    const/16 v8, 0x1800

    .line 238
    const/16 v5, 0x11

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 241
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    .line 242
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "MONGOLIAN"

    .line 245
    const/16 v6, 0x1810

    const/16 v7, 0x1800

    const/16 v8, 0x1900

    .line 242
    const/16 v5, 0x12

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 245
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    .line 246
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "NKO"

    .line 252
    const/16 v6, 0x7c0

    const/16 v7, 0x7c0

    const/16 v8, 0x800

    .line 246
    const/16 v5, 0x13

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 252
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    .line 253
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "MYANMAR_SHAN"

    .line 256
    const/16 v6, 0x1090

    const/16 v8, 0x10a0

    .line 253
    const/16 v5, 0x14

    move v7, v10

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 256
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    .line 257
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "LIMBU"

    .line 260
    const/16 v6, 0x1946

    const/16 v7, 0x1900

    const/16 v8, 0x1950

    .line 257
    const/16 v5, 0x15

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 260
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    .line 261
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "NEW_TAI_LUE"

    .line 264
    const/16 v6, 0x19d0

    const/16 v7, 0x1980

    const/16 v8, 0x19e0

    .line 261
    const/16 v5, 0x16

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 264
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    .line 265
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "BALINESE"

    .line 268
    const/16 v6, 0x1b50

    const/16 v7, 0x1b00

    const/16 v8, 0x1b80

    .line 265
    const/16 v5, 0x17

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 268
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    .line 269
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "SUNDANESE"

    .line 272
    const/16 v6, 0x1bb0

    const/16 v7, 0x1b80

    const/16 v8, 0x1bc0

    .line 269
    const/16 v5, 0x18

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 272
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    .line 273
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "LEPCHA"

    .line 276
    const/16 v6, 0x1c40

    const/16 v7, 0x1c00

    .line 273
    const/16 v5, 0x19

    move v8, v11

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 276
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    .line 277
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "OL_CHIKI"

    .line 280
    const/16 v8, 0x1c80

    .line 277
    const/16 v5, 0x1a

    move v6, v11

    move v7, v11

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 280
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    .line 281
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "VAI"

    .line 284
    const v6, 0xa620

    const v7, 0xa500

    const v8, 0xa640

    .line 281
    const/16 v5, 0x1b

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 284
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    .line 285
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "SAURASHTRA"

    .line 288
    const v6, 0xa8d0

    const v7, 0xa880

    const v8, 0xa8e0

    .line 285
    const/16 v5, 0x1c

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 288
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    .line 289
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "KAYAH_LI"

    .line 292
    const v6, 0xa900

    const v7, 0xa900

    const v8, 0xa930

    .line 289
    const/16 v5, 0x1d

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 292
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    .line 293
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "CHAM"

    .line 296
    const v6, 0xaa50

    const v7, 0xaa00

    const v8, 0xaa60

    .line 293
    const/16 v5, 0x1e

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 296
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    .line 297
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "TAI_THAM_HORA"

    .line 300
    const/16 v6, 0x1a80

    const/16 v7, 0x1a20

    const/16 v8, 0x1ab0

    .line 297
    const/16 v5, 0x1f

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 300
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    .line 301
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "TAI_THAM_THAM"

    .line 304
    const/16 v6, 0x1a90

    const/16 v7, 0x1a20

    const/16 v8, 0x1ab0

    .line 301
    const/16 v5, 0x20

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 304
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    .line 305
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "JAVANESE"

    .line 308
    const v6, 0xa9d0

    const v7, 0xa980

    const v8, 0xa9e0

    .line 305
    const/16 v5, 0x21

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 308
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    .line 309
    new-instance v3, Ljava/awt/font/NumericShaper$Range;

    const-string/jumbo v4, "MEETEI_MAYEK"

    .line 312
    const v6, 0xabf0

    const v7, 0xabc0

    const v8, 0xac00

    .line 309
    const/16 v5, 0x22

    invoke-direct/range {v3 .. v8}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    .line 312
    sput-object v3, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    .line 162
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/awt/font/NumericShaper$Range;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    aput-object v1, v0, v12

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->DEVANAGARI:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->BENGALI:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->GURMUKHI:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->GUJARATI:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ORIYA:Ljava/awt/font/NumericShaper$Range;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAMIL:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TELUGU:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KANNADA:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MALAYALAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->THAI:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LAO:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TIBETAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MYANMAR:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ETHIOPIC:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KHMER:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MONGOLIAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->NKO:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MYANMAR_SHAN:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LIMBU:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->NEW_TAI_LUE:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->BALINESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->SUNDANESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->LEPCHA:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->OL_CHIKI:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->VAI:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->SAURASHTRA:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->KAYAH_LI:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->CHAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->JAVANESE:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->MEETEI_MAYEK:Ljava/awt/font/NumericShaper$Range;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v0

    add-int/lit8 v0, v0, 0x30

    sub-int v0, p3, v0

    iput v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    .line 353
    iput p4, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    .line 354
    iput p5, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILjava/awt/font/NumericShaper$Range;)V
    .registers 7
    .param p1, "enum$name"    # Ljava/lang/String;
    .param p2, "enum$ordinal"    # I
    .param p3, "base"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "-this5"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    invoke-direct/range {p0 .. p5}, Ljava/awt/font/NumericShaper$Range;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private getDigitBase()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Ljava/awt/font/NumericShaper$Range;->base:I

    return v0
.end method

.method private inRange(I)Z
    .registers 4
    .param p1, "c"    # I

    .prologue
    const/4 v0, 0x0

    .line 366
    iget v1, p0, Ljava/awt/font/NumericShaper$Range;->start:I

    if-gt v1, p1, :cond_a

    iget v1, p0, Ljava/awt/font/NumericShaper$Range;->end:I

    if-ge p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static indexToRange(I)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 320
    const/16 v0, 0x13

    if-ge p0, v0, :cond_b

    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v0

    aget-object v0, v0, p0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static maskToRangeSet(I)Ljava/util/Set;
    .registers 5
    .param p0, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    const-class v3, Ljava/awt/font/NumericShaper$Range;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 336
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v0

    .line 337
    .local v0, "a":[Ljava/awt/font/NumericShaper$Range;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v3, 0x13

    if-ge v1, v3, :cond_1c

    .line 338
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p0

    if-eqz v3, :cond_19

    .line 339
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 342
    :cond_1c
    return-object v2
.end method

.method private static toRangeIndex(Ljava/awt/font/NumericShaper$Range;)I
    .registers 3
    .param p0, "script"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper$Range;->ordinal()I

    move-result v0

    .line 316
    .local v0, "index":I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_9

    .end local v0    # "index":I
    :goto_8
    return v0

    .restart local v0    # "index":I
    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method private static toRangeMask(Ljava/util/Set;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    const/4 v1, 0x0

    .line 325
    .local v1, "m":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "range$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/font/NumericShaper$Range;

    .line 326
    .local v2, "range":Ljava/awt/font/NumericShaper$Range;
    invoke-virtual {v2}, Ljava/awt/font/NumericShaper$Range;->ordinal()I

    move-result v0

    .line 327
    .local v0, "index":I
    const/16 v4, 0x13

    if-ge v0, v4, :cond_5

    .line 328
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    or-int/2addr v1, v4

    goto :goto_5

    .line 331
    .end local v0    # "index":I
    .end local v2    # "range":Ljava/awt/font/NumericShaper$Range;
    :cond_1d
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/awt/font/NumericShaper$Range;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Ljava/awt/font/NumericShaper$Range;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/awt/font/NumericShaper$Range;

    return-object v0
.end method

.method public static values()[Ljava/awt/font/NumericShaper$Range;
    .registers 1

    .prologue
    .line 162
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->$VALUES:[Ljava/awt/font/NumericShaper$Range;

    return-object v0
.end method


# virtual methods
.method getNumericBase()C
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method
