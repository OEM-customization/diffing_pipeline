.class public final Ljava/awt/font/NumericShaper;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/NumericShaper$Range;
    }
.end annotation


# static fields
.field public static final ALL_RANGES:I = 0x7ffff

.field public static final ARABIC:I = 0x2

.field private static final ARABIC_KEY:I = 0x1

.field public static final BENGALI:I = 0x10

.field private static final BENGALI_KEY:I = 0x4

.field private static final BSEARCH_THRESHOLD:I = 0x3

.field private static final CONTEXTUAL_MASK:I = -0x80000000

.field public static final DEVANAGARI:I = 0x8

.field private static final DEVANAGARI_KEY:I = 0x3

.field public static final EASTERN_ARABIC:I = 0x4

.field private static final EASTERN_ARABIC_KEY:I = 0x2

.field public static final ETHIOPIC:I = 0x10000

.field private static final ETHIOPIC_KEY:I = 0x10

.field public static final EUROPEAN:I = 0x1

.field private static final EUROPEAN_KEY:I = 0x0

.field public static final GUJARATI:I = 0x40

.field private static final GUJARATI_KEY:I = 0x6

.field public static final GURMUKHI:I = 0x20

.field private static final GURMUKHI_KEY:I = 0x5

.field public static final KANNADA:I = 0x400

.field private static final KANNADA_KEY:I = 0xa

.field public static final KHMER:I = 0x20000

.field private static final KHMER_KEY:I = 0x11

.field public static final LAO:I = 0x2000

.field private static final LAO_KEY:I = 0xd

.field public static final MALAYALAM:I = 0x800

.field private static final MALAYALAM_KEY:I = 0xb

.field public static final MONGOLIAN:I = 0x40000

.field private static final MONGOLIAN_KEY:I = 0x12

.field public static final MYANMAR:I = 0x8000

.field private static final MYANMAR_KEY:I = 0xf

.field private static final NUM_KEYS:I = 0x13

.field public static final ORIYA:I = 0x80

.field private static final ORIYA_KEY:I = 0x7

.field public static final TAMIL:I = 0x100

.field private static final TAMIL_KEY:I = 0x8

.field public static final TELUGU:I = 0x200

.field private static final TELUGU_KEY:I = 0x9

.field public static final THAI:I = 0x1000

.field private static final THAI_KEY:I = 0xc

.field public static final TIBETAN:I = 0x4000

.field private static final TIBETAN_KEY:I = 0xe

.field private static final bases:[C

.field private static final contexts:[C

.field private static ctCache:I = 0x0

.field private static ctCacheLimit:I = 0x0

.field private static final serialVersionUID:J = -0x6f5695fe5d200b84L

.field private static strongTable:[I


# instance fields
.field private volatile transient currentRange:Ljava/awt/font/NumericShaper$Range;

.field private key:I

.field private mask:I

.field private transient rangeArray:[Ljava/awt/font/NumericShaper$Range;

.field private transient rangeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation
.end field

.field private shapingRange:Ljava/awt/font/NumericShaper$Range;

.field private volatile transient stCache:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 498
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Ljava/awt/font/NumericShaper;->bases:[C

    .line 522
    const/16 v0, 0x27

    new-array v0, v0, [C

    fill-array-data v0, :array_3e

    sput-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    .line 548
    const/4 v0, 0x0

    sput v0, Ljava/awt/font/NumericShaper;->ctCache:I

    .line 549
    sget-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    sput v0, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    .line 603
    const/16 v0, 0x258

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Ljava/awt/font/NumericShaper;->strongTable:[I

    .line 136
    return-void

    .line 498
    :array_26
    .array-data 2
        0x0s
        0x630s
        0x6c0s
        0x936s
        0x9b6s
        0xa36s
        0xab6s
        0xb36s
        0xbb6s
        0xc36s
        0xcb6s
        0xd36s
        0xe20s
        0xea0s
        0xef0s
        0x1010s
        0x1338s
        0x17b0s
        0x17e0s
    .end array-data

    .line 522
    nop

    :array_3e
    .array-data 2
        0x0s
        0x300s
        0x600s
        0x780s
        0x600s
        0x780s
        0x900s
        0x980s
        0x980s
        0xa00s
        0xa00s
        0xa80s
        0xa80s
        0xb00s
        0xb00s
        0xb80s
        0xb80s
        0xc00s
        0xc00s
        0xc80s
        0xc80s
        0xd00s
        0xd00s
        0xd80s
        0xe00s
        0xe80s
        0xe80s
        0xf00s
        0xf00s
        0x1000s
        0x1000s
        0x1080s
        0x1200s
        0x1380s
        0x1780s
        0x1800s
        0x1800s
        0x1900s
        -0x1s
    .end array-data

    .line 603
    nop

    :array_6a
    .array-data 4
        0x0
        0x41
        0x5b
        0x61
        0x7b
        0xaa
        0xab
        0xb5
        0xb6
        0xba
        0xbb
        0xc0
        0xd7
        0xd8
        0xf7
        0xf8
        0x2b9
        0x2bb
        0x2c2
        0x2d0
        0x2d2
        0x2e0
        0x2e5
        0x2ee
        0x2ef
        0x370
        0x374
        0x376
        0x37e
        0x386
        0x387
        0x388
        0x3f6
        0x3f7
        0x483
        0x48a
        0x58a
        0x5be
        0x5bf
        0x5c0
        0x5c1
        0x5c3
        0x5c4
        0x5c6
        0x5c7
        0x5d0
        0x600
        0x608
        0x609
        0x60b
        0x60c
        0x60d
        0x60e
        0x61b
        0x64b
        0x66d
        0x670
        0x671
        0x6d6
        0x6e5
        0x6e7
        0x6ee
        0x6f0
        0x6fa
        0x711
        0x712
        0x730
        0x74d
        0x7a6
        0x7b1
        0x7eb
        0x7f4
        0x7f6
        0x7fa
        0x816
        0x81a
        0x81b
        0x824
        0x825
        0x828
        0x829
        0x830
        0x859
        0x85e
        0x8e4
        0x903
        0x93a
        0x93b
        0x93c
        0x93d
        0x941
        0x949
        0x94d
        0x94e
        0x951
        0x958
        0x962
        0x964
        0x981
        0x982
        0x9bc
        0x9bd
        0x9c1
        0x9c7
        0x9cd
        0x9ce
        0x9e2
        0x9e6
        0x9f2
        0x9f4
        0x9fb
        0xa03
        0xa3c
        0xa3e
        0xa41
        0xa59
        0xa70
        0xa72
        0xa75
        0xa83
        0xabc
        0xabd
        0xac1
        0xac9
        0xacd
        0xad0
        0xae2
        0xae6
        0xaf1
        0xb02
        0xb3c
        0xb3d
        0xb3f
        0xb40
        0xb41
        0xb47
        0xb4d
        0xb57
        0xb62
        0xb66
        0xb82
        0xb83
        0xbc0
        0xbc1
        0xbcd
        0xbd0
        0xbf3
        0xc01
        0xc3e
        0xc41
        0xc46
        0xc58
        0xc62
        0xc66
        0xc78
        0xc7f
        0xcbc
        0xcbd
        0xccc
        0xcd5
        0xce2
        0xce6
        0xd41
        0xd46
        0xd4d
        0xd4e
        0xd62
        0xd66
        0xdca
        0xdcf
        0xdd2
        0xdd8
        0xe31
        0xe32
        0xe34
        0xe40
        0xe47
        0xe4f
        0xeb1
        0xeb2
        0xeb4
        0xebd
        0xec8
        0xed0
        0xf18
        0xf1a
        0xf35
        0xf36
        0xf37
        0xf38
        0xf39
        0xf3e
        0xf71
        0xf7f
        0xf80
        0xf85
        0xf86
        0xf88
        0xf8d
        0xfbe
        0xfc6
        0xfc7
        0x102d
        0x1031
        0x1032
        0x1038
        0x1039
        0x103b
        0x103d
        0x103f
        0x1058
        0x105a
        0x105e
        0x1061
        0x1071
        0x1075
        0x1082
        0x1083
        0x1085
        0x1087
        0x108d
        0x108e
        0x109d
        0x109e
        0x135d
        0x1360
        0x1390
        0x13a0
        0x1400
        0x1401
        0x1680
        0x1681
        0x169b
        0x16a0
        0x1712
        0x1720
        0x1732
        0x1735
        0x1752
        0x1760
        0x1772
        0x1780
        0x17b4
        0x17b6
        0x17b7
        0x17be
        0x17c6
        0x17c7
        0x17c9
        0x17d4
        0x17db
        0x17dc
        0x17dd
        0x17e0
        0x17f0
        0x1810
        0x18a9
        0x18aa
        0x1920
        0x1923
        0x1927
        0x1929
        0x1932
        0x1933
        0x1939
        0x1946
        0x19de
        0x1a00
        0x1a17
        0x1a19
        0x1a56
        0x1a57
        0x1a58
        0x1a61
        0x1a62
        0x1a63
        0x1a65
        0x1a6d
        0x1a73
        0x1a80
        0x1b00
        0x1b04
        0x1b34
        0x1b35
        0x1b36
        0x1b3b
        0x1b3c
        0x1b3d
        0x1b42
        0x1b43
        0x1b6b
        0x1b74
        0x1b80
        0x1b82
        0x1ba2
        0x1ba6
        0x1ba8
        0x1baa
        0x1bab
        0x1bac
        0x1be6    # 1.0008E-41f
        0x1be7    # 1.001E-41f
        0x1be8
        0x1bea
        0x1bed
        0x1bee
        0x1bef
        0x1bf2
        0x1c2c
        0x1c34
        0x1c36
        0x1c3b
        0x1cd0
        0x1cd3
        0x1cd4
        0x1ce1
        0x1ce2
        0x1ce9
        0x1ced
        0x1cee
        0x1cf4
        0x1cf5
        0x1dc0
        0x1e00
        0x1fbd
        0x1fbe
        0x1fbf
        0x1fc2
        0x1fcd
        0x1fd0
        0x1fdd
        0x1fe0
        0x1fed
        0x1ff2
        0x1ffd
        0x200e
        0x2010
        0x2071
        0x2074
        0x207f
        0x2080
        0x2090
        0x20a0
        0x2102
        0x2103
        0x2107
        0x2108
        0x210a
        0x2114
        0x2115
        0x2116
        0x2119
        0x211e
        0x2124
        0x2125
        0x2126
        0x2127
        0x2128
        0x2129
        0x212a
        0x212e
        0x212f
        0x213a
        0x213c
        0x2140
        0x2145
        0x214a
        0x214e
        0x2150
        0x2160
        0x2189
        0x2336
        0x237b
        0x2395
        0x2396
        0x249c
        0x24ea
        0x26ac
        0x26ad
        0x2800
        0x2900
        0x2c00
        0x2ce5
        0x2ceb
        0x2cef
        0x2cf2
        0x2cf9
        0x2d00
        0x2d7f
        0x2d80
        0x2de0
        0x3005
        0x3008
        0x3021
        0x302a
        0x3031
        0x3036
        0x3038
        0x303d
        0x3041
        0x3099
        0x309d
        0x30a0
        0x30a1
        0x30fb
        0x30fc
        0x31c0
        0x31f0
        0x321d
        0x3220
        0x3250
        0x3260
        0x327c
        0x327f
        0x32b1
        0x32c0
        0x32cc
        0x32d0
        0x3377
        0x337b
        0x33de
        0x33e0
        0x33ff
        0x3400
        0x4dc0
        0x4e00
        0xa490
        0xa4d0
        0xa60d
        0xa610
        0xa66f
        0xa680
        0xa69f
        0xa6a0
        0xa6f0
        0xa6f2
        0xa700
        0xa722
        0xa788
        0xa789
        0xa802
        0xa803
        0xa806
        0xa807
        0xa80b
        0xa80c
        0xa825
        0xa827
        0xa828
        0xa830
        0xa838
        0xa840
        0xa874
        0xa880
        0xa8c4
        0xa8ce
        0xa8e0
        0xa8f2
        0xa926
        0xa92e
        0xa947
        0xa952
        0xa980
        0xa983
        0xa9b3
        0xa9b4
        0xa9b6
        0xa9ba
        0xa9bc
        0xa9bd
        0xaa29
        0xaa2f
        0xaa31
        0xaa33
        0xaa35
        0xaa40
        0xaa43
        0xaa44
        0xaa4c
        0xaa4d
        0xaab0
        0xaab1
        0xaab2
        0xaab5
        0xaab7
        0xaab9
        0xaabe
        0xaac0
        0xaac1
        0xaac2
        0xaaec
        0xaaee
        0xaaf6
        0xab01
        0xabe5
        0xabe6
        0xabe8
        0xabe9
        0xabed
        0xabf0
        0xfb1e
        0xfb1f
        0xfb29
        0xfb2a
        0xfd3e
        0xfd50
        0xfdfd
        0xfe70
        0xfeff
        0xff21
        0xff3b
        0xff41
        0xff5b
        0xff66
        0xffe0
        0x10000
        0x10101
        0x10102
        0x10140
        0x101d0
        0x101fd
        0x10280
        0x1091f
        0x10920
        0x10a01
        0x10a10
        0x10a38
        0x10a40
        0x10b39
        0x10b40
        0x10e60
        0x11000
        0x11001
        0x11002
        0x11038
        0x11047
        0x11052
        0x11066
        0x11080
        0x11082
        0x110b3
        0x110b7
        0x110b9
        0x110bb
        0x11100
        0x11103
        0x11127
        0x1112c
        0x1112d
        0x11136
        0x11180
        0x11182
        0x111b6
        0x111bf
        0x116ab
        0x116ac
        0x116ad
        0x116ae
        0x116b0
        0x116b6
        0x116b7
        0x116c0    # 9.9997E-41f
        0x16f8f
        0x16f93
        0x1d167
        0x1d16a
        0x1d173
        0x1d183
        0x1d185
        0x1d18c
        0x1d1aa
        0x1d1ae
        0x1d200
        0x1d360
        0x1d6db
        0x1d6dc
        0x1d715
        0x1d716
        0x1d74f
        0x1d750
        0x1d789
        0x1d78a
        0x1d7c3
        0x1d7c4
        0x1d7ce
        0x1ee00
        0x1eef0
        0x1f110
        0x1f16a
        0x1f170
        0x1f300
        0x1f48c
        0x1f48d
        0x1f524
        0x1f525
        0x20000
        0xe0001
        0xf0000
        0x10fffe
        0x10ffff
    .end array-data
.end method

.method private constructor <init>(II)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    .line 1054
    iput p1, p0, Ljava/awt/font/NumericShaper;->key:I

    .line 1055
    iput p2, p0, Ljava/awt/font/NumericShaper;->mask:I

    .line 1056
    return-void
.end method

.method private constructor <init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
    .registers 5
    .param p1, "defaultContext"    # Ljava/awt/font/NumericShaper$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/font/NumericShaper$Range;",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1058
    .local p2, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    .line 1059
    iput-object p1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    .line 1060
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    .line 1064
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1065
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1064
    if-eqz v0, :cond_2d

    .line 1066
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1071
    :cond_2d
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1072
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1071
    if-eqz v0, :cond_48

    .line 1073
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1076
    :cond_48
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    .line 1077
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_6a

    .line 1079
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    .line 1080
    new-instance v1, Ljava/awt/font/NumericShaper$1;

    invoke-direct {v1, p0}, Ljava/awt/font/NumericShaper$1;-><init>(Ljava/awt/font/NumericShaper;)V

    .line 1079
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1086
    :cond_6a
    return-void
.end method

.method private checkParams([CII)V
    .registers 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 1186
    if-nez p1, :cond_b

    .line 1187
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_b
    if-ltz p2, :cond_10

    .line 1190
    array-length v0, p1

    if-le p2, v0, :cond_2b

    .line 1193
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad start or count for text of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_2b
    add-int v0, p2, p3

    if-ltz v0, :cond_10

    .line 1192
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_10

    .line 1196
    return-void
.end method

.method private static getContextKey(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 553
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    aget-char v1, v1, v2

    if-ge p0, v1, :cond_1c

    .line 554
    :goto_9
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    if-lez v1, :cond_3d

    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    aget-char v1, v1, v2

    if-ge p0, v1, :cond_3d

    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    goto :goto_9

    .line 555
    :cond_1c
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-lt p0, v1, :cond_3d

    .line 556
    :goto_26
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    sget v2, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    if-ge v1, v2, :cond_3d

    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-lt p0, v1, :cond_3d

    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    goto :goto_26

    .line 560
    :cond_3d
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_47

    sget v0, Ljava/awt/font/NumericShaper;->ctCache:I

    div-int/lit8 v0, v0, 0x2

    :cond_47
    return v0
.end method

.method public static getContextualShaper(I)Ljava/awt/font/NumericShaper;
    .registers 3
    .param p0, "ranges"    # I

    .prologue
    .line 978
    const/high16 v0, -0x80000000

    or-int/2addr p0, v0

    .line 979
    new-instance v0, Ljava/awt/font/NumericShaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v0
.end method

.method public static getContextualShaper(II)Ljava/awt/font/NumericShaper;
    .registers 4
    .param p0, "ranges"    # I
    .param p1, "defaultContext"    # I

    .prologue
    .line 1020
    invoke-static {p1}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    .line 1021
    .local v0, "key":I
    const/high16 v1, -0x80000000

    or-int/2addr p0, v1

    .line 1022
    new-instance v1, Ljava/awt/font/NumericShaper;

    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v1
.end method

.method public static getContextualShaper(Ljava/util/Set;)Ljava/awt/font/NumericShaper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    .prologue
    .line 999
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    new-instance v0, Ljava/awt/font/NumericShaper;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    .line 1000
    .local v0, "shaper":Ljava/awt/font/NumericShaper;
    const/high16 v1, -0x80000000

    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    .line 1001
    return-object v0
.end method

.method public static getContextualShaper(Ljava/util/Set;Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .registers 4
    .param p1, "defaultContext"    # Ljava/awt/font/NumericShaper$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;",
            "Ljava/awt/font/NumericShaper$Range;",
            ")",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    if-nez p1, :cond_8

    .line 1043
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1045
    :cond_8
    new-instance v0, Ljava/awt/font/NumericShaper;

    invoke-direct {v0, p1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    .line 1046
    .local v0, "shaper":Ljava/awt/font/NumericShaper;
    const/high16 v1, -0x80000000

    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    .line 1047
    return-object v0
.end method

.method private static getHighBit(I)I
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1445
    if-gtz p0, :cond_5

    .line 1446
    const/16 v1, -0x20

    return v1

    .line 1449
    :cond_5
    const/4 v0, 0x0

    .line 1451
    .local v0, "bit":I
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_e

    .line 1452
    shr-int/lit8 p0, p0, 0x10

    .line 1453
    const/16 v0, 0x10

    .line 1456
    :cond_e
    const/16 v1, 0x100

    if-lt p0, v1, :cond_16

    .line 1457
    shr-int/lit8 p0, p0, 0x8

    .line 1458
    add-int/lit8 v0, v0, 0x8

    .line 1461
    :cond_16
    const/16 v1, 0x10

    if-lt p0, v1, :cond_1e

    .line 1462
    shr-int/lit8 p0, p0, 0x4

    .line 1463
    add-int/lit8 v0, v0, 0x4

    .line 1466
    :cond_1e
    const/4 v1, 0x4

    if-lt p0, v1, :cond_25

    .line 1467
    shr-int/lit8 p0, p0, 0x2

    .line 1468
    add-int/lit8 v0, v0, 0x2

    .line 1471
    :cond_25
    const/4 v1, 0x2

    if-lt p0, v1, :cond_2a

    .line 1472
    add-int/lit8 v0, v0, 0x1

    .line 1475
    :cond_2a
    return v0
.end method

.method private static getKeyFromMask(I)I
    .registers 5
    .param p0, "mask"    # I

    .prologue
    const/16 v3, 0x13

    const/4 v2, 0x1

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "key":I
    :goto_4
    if-ge v0, v3, :cond_e

    shl-int v1, v2, v0

    and-int/2addr v1, p0

    if-nez v1, :cond_e

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 929
    :cond_e
    if-eq v0, v3, :cond_16

    shl-int v1, v2, v0

    not-int v1, v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_34

    .line 930
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid shaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 932
    :cond_34
    return v0
.end method

.method public static getShaper(I)Ljava/awt/font/NumericShaper;
    .registers 3
    .param p0, "singleRange"    # I

    .prologue
    .line 944
    invoke-static {p0}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    .line 945
    .local v0, "key":I
    new-instance v1, Ljava/awt/font/NumericShaper;

    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v1
.end method

.method public static getShaper(Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .registers 3
    .param p0, "singleRange"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    .line 960
    new-instance v0, Ljava/awt/font/NumericShaper;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    return-object v0
.end method

.method private isStrongDirectional(C)Z
    .registers 7
    .param p1, "c"    # C

    .prologue
    .line 912
    iget v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    .line 913
    .local v0, "cachedIndex":I
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    aget v2, v2, v0

    if-ge p1, v2, :cond_18

    .line 914
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Ljava/awt/font/NumericShaper;->search(I[III)I

    move-result v0

    .line 919
    :cond_f
    :goto_f
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    const/4 v1, 0x1

    .line 920
    .local v1, "val":Z
    :goto_15
    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    .line 921
    return v1

    .line 915
    .end local v1    # "val":Z
    :cond_18
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-lt p1, v2, :cond_f

    .line 916
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    add-int/lit8 v3, v0, 0x1

    .line 917
    sget-object v4, Ljava/awt/font/NumericShaper;->strongTable:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 916
    invoke-static {p1, v2, v3, v4}, Ljava/awt/font/NumericShaper;->search(I[III)I

    move-result v0

    goto :goto_f

    .line 919
    :cond_2f
    const/4 v1, 0x0

    .restart local v1    # "val":Z
    goto :goto_15
.end method

.method private rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;
    .registers 10
    .param p1, "codepoint"    # I

    .prologue
    .line 567
    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 568
    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    return-object v6

    .line 571
    :cond_b
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    .line 572
    .local v5, "ranges":[Ljava/awt/font/NumericShaper$Range;
    array-length v6, v5

    const/4 v7, 0x3

    if-le v6, v7, :cond_32

    .line 573
    const/4 v2, 0x0

    .line 574
    .local v2, "lo":I
    array-length v6, v5

    add-int/lit8 v0, v6, -0x1

    .line 575
    .local v0, "hi":I
    :goto_15
    if-gt v2, v0, :cond_44

    .line 576
    add-int v6, v2, v0

    div-int/lit8 v3, v6, 0x2

    .line 577
    .local v3, "mid":I
    aget-object v4, v5, v3

    .line 578
    .local v4, "range":Ljava/awt/font/NumericShaper$Range;
    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v6

    if-ge p1, v6, :cond_26

    .line 579
    add-int/lit8 v0, v3, -0x1

    goto :goto_15

    .line 580
    :cond_26
    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v6

    if-lt p1, v6, :cond_2f

    .line 581
    add-int/lit8 v2, v3, 0x1

    goto :goto_15

    .line 583
    :cond_2f
    iput-object v4, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    .line 584
    return-object v4

    .line 588
    .end local v0    # "hi":I
    .end local v2    # "lo":I
    .end local v3    # "mid":I
    .end local v4    # "range":Ljava/awt/font/NumericShaper$Range;
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    array-length v6, v5

    if-ge v1, v6, :cond_44

    .line 589
    aget-object v6, v5, v1

    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 590
    aget-object v6, v5, v1

    return-object v6

    .line 588
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 594
    .end local v1    # "i":I
    :cond_44
    sget-object v6, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    return-object v6
.end method

.method private static search(I[III)I
    .registers 10
    .param p0, "value"    # I
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v5, 0x1

    .line 1483
    invoke-static {p3}, Ljava/awt/font/NumericShaper;->getHighBit(I)I

    move-result v4

    shl-int v2, v5, v4

    .line 1484
    .local v2, "power":I
    sub-int v0, p3, v2

    .line 1485
    .local v0, "extra":I
    move v3, v2

    .line 1486
    .local v3, "probe":I
    move v1, p2

    .line 1488
    .local v1, "index":I
    add-int v4, p2, v0

    aget v4, p1, v4

    if-lt p0, v4, :cond_13

    .line 1489
    add-int v1, p2, v0

    .line 1492
    :cond_13
    :goto_13
    if-le v3, v5, :cond_1f

    .line 1493
    shr-int/lit8 v3, v3, 0x1

    .line 1495
    add-int v4, v1, v3

    aget v4, p1, v4

    if-lt p0, v4, :cond_13

    .line 1496
    add-int/2addr v1, v3

    goto :goto_13

    .line 1500
    :cond_1f
    return v1
.end method

.method private declared-synchronized shapeContextually([CIII)V
    .registers 15
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "ctxKey"    # I

    .prologue
    monitor-enter p0

    .line 1271
    :try_start_1
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/4 v8, 0x1

    shl-int/2addr v8, p4

    and-int/2addr v7, v8

    if-nez v7, :cond_9

    .line 1272
    const/4 p4, 0x0

    .line 1274
    :cond_9
    move v4, p4

    .line 1276
    .local v4, "lastkey":I
    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    aget-char v0, v7, p4

    .line 1277
    .local v0, "base":I
    const/16 v7, 0x10

    if-ne p4, v7, :cond_51

    const/16 v5, 0x31

    .line 1279
    .local v5, "minDigit":C
    :goto_14
    const-class v8, Ljava/awt/font/NumericShaper;

    monitor-enter v8
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_74

    .line 1280
    move v3, p2

    .local v3, "i":I
    add-int v2, p2, p3

    .local v2, "e":I
    :goto_1a
    if-ge v3, v2, :cond_6e

    .line 1281
    :try_start_1c
    aget-char v1, p1, v3

    .line 1282
    .local v1, "c":C
    if-lt v1, v5, :cond_29

    const/16 v7, 0x39

    if-gt v1, v7, :cond_29

    .line 1283
    add-int v7, v1, v0

    int-to-char v7, v7

    aput-char v7, p1, v3

    .line 1286
    :cond_29
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1287
    invoke-static {v1}, Ljava/awt/font/NumericShaper;->getContextKey(C)I

    move-result v6

    .line 1288
    .local v6, "newkey":I
    if-eq v6, v4, :cond_4e

    .line 1289
    move v4, v6

    .line 1291
    move p4, v6

    .line 1292
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_54

    .line 1293
    const/4 v7, 0x1

    if-eq v6, v7, :cond_43

    .line 1294
    const/4 v7, 0x2

    if-ne v6, v7, :cond_54

    .line 1295
    :cond_43
    const/4 p4, 0x2

    .line 1304
    :cond_44
    :goto_44
    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    aget-char v0, v7, p4

    .line 1306
    const/16 v7, 0x10

    if-ne p4, v7, :cond_6b

    const/16 v5, 0x31

    .line 1280
    .end local v6    # "newkey":I
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1277
    .end local v1    # "c":C
    .end local v2    # "e":I
    .end local v3    # "i":I
    .end local v5    # "minDigit":C
    :cond_51
    const/16 v5, 0x30

    .restart local v5    # "minDigit":C
    goto :goto_14

    .line 1296
    .restart local v1    # "c":C
    .restart local v2    # "e":I
    .restart local v3    # "i":I
    .restart local v6    # "newkey":I
    :cond_54
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_62

    .line 1297
    const/4 v7, 0x1

    if-eq v6, v7, :cond_60

    .line 1298
    const/4 v7, 0x2

    if-ne v6, v7, :cond_62

    .line 1299
    :cond_60
    const/4 p4, 0x1

    goto :goto_44

    .line 1300
    :cond_62
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I
    :try_end_64
    .catchall {:try_start_1c .. :try_end_64} :catchall_71

    const/4 v9, 0x1

    shl-int/2addr v9, v6

    and-int/2addr v7, v9

    if-nez v7, :cond_44

    .line 1301
    const/4 p4, 0x0

    goto :goto_44

    .line 1306
    :cond_6b
    const/16 v5, 0x30

    goto :goto_4e

    .end local v1    # "c":C
    .end local v6    # "newkey":I
    :cond_6e
    :try_start_6e
    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_74

    monitor-exit p0

    .line 1311
    return-void

    .line 1279
    :catchall_71
    move-exception v7

    :try_start_72
    monitor-exit v8

    throw v7
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_74

    .end local v0    # "base":I
    .end local v2    # "e":I
    .end local v3    # "i":I
    .end local v4    # "lastkey":I
    .end local v5    # "minDigit":C
    :catchall_74
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V
    .registers 12
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "ctxKey"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    .line 1315
    if-eqz p4, :cond_c

    iget-object v6, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    .line 1316
    :cond_c
    sget-object p4, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    .line 1319
    :cond_e
    move-object v4, p4

    .line 1320
    .local v4, "lastKey":Ljava/awt/font/NumericShaper$Range;
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    .line 1321
    .local v0, "base":I
    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v5, v6

    .line 1322
    .local v5, "minDigit":C
    add-int v2, p2, p3

    .line 1323
    .local v2, "end":I
    move v3, p2

    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_48

    .line 1324
    aget-char v1, p1, v3

    .line 1325
    .local v1, "c":C
    if-lt v1, v5, :cond_2f

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2f

    .line 1326
    add-int v6, v1, v0

    int-to-char v6, v6

    aput-char v6, p1, v3

    .line 1323
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1329
    :cond_2f
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1330
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object p4

    .line 1331
    if-eq p4, v4, :cond_2c

    .line 1332
    move-object v4, p4

    .line 1333
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    .line 1334
    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v5, v6

    goto :goto_2c

    .line 1338
    .end local v1    # "c":C
    :cond_48
    return-void
.end method

.method private shapeNonContextually([CII)V
    .registers 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 1246
    const/16 v4, 0x30

    .line 1247
    .local v4, "minDigit":C
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-eqz v5, :cond_2a

    .line 1248
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v5}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    .line 1249
    .local v0, "base":I
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-virtual {v5}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v4, v5

    .line 1256
    .end local v4    # "minDigit":C
    :cond_15
    :goto_15
    move v3, p2

    .local v3, "i":I
    add-int v2, p2, p3

    .local v2, "e":I
    :goto_18
    if-ge v3, v2, :cond_3a

    .line 1257
    aget-char v1, p1, v3

    .line 1258
    .local v1, "c":C
    if-lt v1, v4, :cond_27

    const/16 v5, 0x39

    if-gt v1, v5, :cond_27

    .line 1259
    add-int v5, v1, v0

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 1256
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1251
    .end local v0    # "base":I
    .end local v1    # "c":C
    .end local v2    # "e":I
    .end local v3    # "i":I
    .restart local v4    # "minDigit":C
    :cond_2a
    sget-object v5, Ljava/awt/font/NumericShaper;->bases:[C

    iget v6, p0, Ljava/awt/font/NumericShaper;->key:I

    aget-char v0, v5, v6

    .line 1252
    .restart local v0    # "base":I
    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_15

    .line 1253
    const/16 v5, 0x31

    int-to-char v4, v5

    .local v4, "minDigit":C
    goto :goto_15

    .line 1262
    .end local v4    # "minDigit":C
    .restart local v2    # "e":I
    .restart local v3    # "i":I
    :cond_3a
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1514
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-eqz v1, :cond_e

    .line 1515
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v1}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    .line 1516
    .local v0, "index":I
    if-ltz v0, :cond_e

    .line 1517
    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    .line 1520
    .end local v0    # "index":I
    :cond_e
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_1d

    .line 1521
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    iget-object v2, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/awt/font/NumericShaper$Range;->-wrap3(Ljava/util/Set;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    .line 1523
    :cond_1d
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1524
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1376
    if-eqz p1, :cond_8a

    .line 1378
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/awt/font/NumericShaper;

    move-object v2, v0

    .line 1379
    .local v2, "rhs":Ljava/awt/font/NumericShaper;
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_53

    .line 1380
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_2f

    .line 1381
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_2d

    .line 1382
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget-object v8, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1381
    if-eqz v7, :cond_2d

    .line 1383
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    iget-object v8, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-ne v7, v8, :cond_2b

    .line 1381
    :goto_2a
    return v5

    :cond_2b
    move v5, v6

    .line 1383
    goto :goto_2a

    :cond_2d
    move v5, v6

    .line 1381
    goto :goto_2a

    .line 1385
    :cond_2f
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_52

    .line 1386
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget v8, v2, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1385
    if-eqz v7, :cond_52

    .line 1387
    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    iget v8, v2, Ljava/awt/font/NumericShaper;->key:I

    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v8

    if-ne v7, v8, :cond_52

    move v6, v5

    .line 1385
    :cond_52
    return v6

    .line 1388
    :cond_53
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_7b

    .line 1389
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v3

    .line 1390
    .local v3, "rset":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    iget v7, p0, Ljava/awt/font/NumericShaper;->key:I

    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    .line 1391
    .local v4, "srange":Ljava/awt/font/NumericShaper$Range;
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_7a

    .line 1392
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1391
    if-eqz v7, :cond_7a

    .line 1393
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-ne v4, v7, :cond_7a

    move v6, v5

    .line 1391
    :cond_7a
    return v6

    .line 1395
    .end local v3    # "rset":Ljava/util/Set;, "Ljava/util/Set<Ljava/awt/font/NumericShaper$Range;>;"
    .end local v4    # "srange":Ljava/awt/font/NumericShaper$Range;
    :cond_7b
    iget v7, v2, Ljava/awt/font/NumericShaper;->mask:I

    iget v8, p0, Ljava/awt/font/NumericShaper;->mask:I

    if-ne v7, v8, :cond_88

    iget v7, v2, Ljava/awt/font/NumericShaper;->key:I

    iget v8, p0, Ljava/awt/font/NumericShaper;->key:I
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_85} :catch_89

    if-ne v7, v8, :cond_88

    move v6, v5

    :cond_88
    return v6

    .line 1397
    .end local v2    # "rhs":Ljava/awt/font/NumericShaper;
    :catch_89
    move-exception v1

    .line 1400
    :cond_8a
    return v6
.end method

.method public getRangeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 1236
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 1238
    :cond_b
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v0}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRanges()I
    .registers 3

    .prologue
    .line 1224
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1346
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    .line 1347
    .local v0, "hash":I
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_10

    .line 1351
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    .line 1352
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1354
    :cond_10
    return v0
.end method

.method public isContextual()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1205
    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public shape([CII)V
    .registers 5
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 1101
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    .line 1102
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1103
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v0, :cond_13

    .line 1104
    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    .line 1111
    :goto_12
    return-void

    .line 1106
    :cond_13
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_12

    .line 1109
    :cond_19
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_12
.end method

.method public shape([CIII)V
    .registers 7
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # I

    .prologue
    .line 1132
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    .line 1133
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1134
    invoke-static {p4}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    .line 1135
    .local v0, "ctxKey":I
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v1, :cond_15

    .line 1136
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    .line 1143
    .end local v0    # "ctxKey":I
    :goto_14
    return-void

    .line 1138
    .restart local v0    # "ctxKey":I
    :cond_15
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_14

    .line 1141
    .end local v0    # "ctxKey":I
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_14
.end method

.method public shape([CIILjava/awt/font/NumericShaper$Range;)V
    .registers 8
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "context"    # Ljava/awt/font/NumericShaper$Range;

    .prologue
    .line 1164
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    .line 1165
    if-nez p4, :cond_e

    .line 1166
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1169
    :cond_e
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1170
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_1c

    .line 1171
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    .line 1183
    :goto_1b
    return-void

    .line 1173
    :cond_1c
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    .line 1174
    .local v0, "key":I
    if-ltz v0, :cond_26

    .line 1175
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    goto :goto_1b

    .line 1177
    :cond_26
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_1b

    .line 1181
    .end local v0    # "key":I
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "[contextual:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1413
    const/4 v3, 0x0

    .line 1414
    .local v3, "keyNames":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1415
    const-string/jumbo v4, ", context:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-nez v4, :cond_59

    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    aget-object v4, v4, v5

    :goto_30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1419
    :cond_33
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v4, :cond_63

    .line 1420
    const-string/jumbo v4, ", range(s): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    const/4 v1, 0x1

    .line 1422
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    const/16 v4, 0x13

    if-ge v2, v4, :cond_6f

    .line 1423
    iget v4, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_56

    .line 1424
    if-eqz v1, :cond_5c

    .line 1425
    const/4 v1, 0x0

    .line 1429
    :goto_4d
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1422
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1416
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_59
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    goto :goto_30

    .line 1427
    .restart local v1    # "first":Z
    .restart local v2    # "i":I
    :cond_5c
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 1433
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_63
    const-string/jumbo v4, ", range set: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1435
    :cond_6f
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
