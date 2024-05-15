.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_DOT:J

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LEFT_BRACKET:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SCHEME:J

.field private static final H_SERVER:J

.field private static final H_SERVER_PERCENT:J

.field private static final H_UNDERSCORE:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_URIC_NO_SLASH:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_DOT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LEFT_BRACKET:J

.field private static final L_LOWALPHA:J = 0x0L

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SCHEME:J

.field private static final L_SERVER:J

.field private static final L_SERVER_PERCENT:J

.field private static final L_UNDERSCORE:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J = 0x0L

.field private static final L_URIC:J

.field private static final L_URIC_NO_SLASH:J

.field private static final L_USERINFO:J

.field private static final hexDigits:[C

.field static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient authority:Ljava/lang/String;

.field private volatile transient decodedAuthority:Ljava/lang/String;

.field private volatile transient decodedFragment:Ljava/lang/String;

.field private volatile transient decodedPath:Ljava/lang/String;

.field private volatile transient decodedQuery:Ljava/lang/String;

.field private volatile transient decodedSchemeSpecificPart:Ljava/lang/String;

.field private volatile transient decodedUserInfo:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private volatile transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private volatile transient schemeSpecificPart:Ljava/lang/String;

.field private volatile string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    return-wide v0
.end method

.method static synthetic -get1()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get10()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get11()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_URIC:J

    return-wide v0
.end method

.method static synthetic -get12()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get13()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get14()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DASH:J

    return-wide v0
.end method

.method static synthetic -get15()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    return-wide v0
.end method

.method static synthetic -get16()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DOT:J

    return-wide v0
.end method

.method static synthetic -get17()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_HEX:J

    return-wide v0
.end method

.method static synthetic -get18()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_PATH:J

    return-wide v0
.end method

.method static synthetic -get19()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get2()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_DASH:J

    return-wide v0
.end method

.method static synthetic -get20()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get21()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    return-wide v0
.end method

.method static synthetic -get22()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -get23()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get24()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_URIC:J

    return-wide v0
.end method

.method static synthetic -get25()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get3()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_DOT:J

    return-wide v0
.end method

.method static synthetic -get4()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_HEX:J

    return-wide v0
.end method

.method static synthetic -get5()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_PATH:J

    return-wide v0
.end method

.method static synthetic -get6()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get8()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    return-wide v0
.end method

.method static synthetic -get9()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Ljava/net/URI;I)I
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/net/URI;->port:I

    return p1
.end method

.method static synthetic -set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(CJJ)Z
    .registers 6
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x41

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const-class v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    .line 2552
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    .line 2559
    const/16 v0, 0x5a

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UPALPHA:J

    .line 2565
    const/16 v0, 0x7a

    invoke-static {v9, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    .line 2569
    sget-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v2, Ljava/net/URI;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_ALPHA:J

    .line 2572
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    .line 2573
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    .line 2577
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    sput-wide v0, Ljava/net/URI;->L_HEX:J

    .line 2578
    const/16 v0, 0x46

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    const/16 v2, 0x66

    invoke-static {v9, v2}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_HEX:J

    .line 2582
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_MARK:J

    .line 2583
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_MARK:J

    .line 2586
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    .line 2587
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    .line 2592
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_RESERVED:J

    .line 2593
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    .line 2601
    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    sput-wide v0, Ljava/net/URI;->L_URIC:J

    .line 2602
    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v2, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_URIC:J

    .line 2607
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2606
    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    .line 2609
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2608
    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    .line 2612
    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_PATH:J

    .line 2613
    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_PATH:J

    .line 2616
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DASH:J

    .line 2617
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DASH:J

    .line 2620
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    .line 2621
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    .line 2624
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DOT:J

    .line 2625
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DOT:J

    .line 2630
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2629
    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    .line 2632
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2631
    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    .line 2637
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2636
    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    .line 2639
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2638
    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    .line 2643
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v2, Ljava/net/URI;->L_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->L_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2642
    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    .line 2645
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v2, Ljava/net/URI;->H_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->H_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2644
    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    .line 2650
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2649
    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    .line 2652
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2651
    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    .line 2653
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_LEFT_BRACKET:J

    .line 2654
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    .line 2657
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    .line 2658
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    .line 2663
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2662
    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    .line 2665
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2664
    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    .line 2670
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1ba

    sput-object v0, Ljava/net/URI;->hexDigits:[C

    .line 459
    return-void

    .line 2670
    :array_1ba
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v6, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v3, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v3, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v3, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v3, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v3, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v3, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 812
    new-instance v10, Ljava/net/URI$Parser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x0

    .line 812
    invoke-virtual {v10, v0}, Ljava/net/URI$Parser;->parse(Z)V

    .line 816
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 664
    const/4 v3, 0x0

    .line 665
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 664
    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 667
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v11, p1, v0}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/net/URI$Parser;

    invoke-direct {v1, p0, v11}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URI$Parser;->parse(Z)V

    .line 669
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 769
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 737
    const/4 v2, 0x0

    .line 738
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 737
    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, v10}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 742
    return-void
.end method

.method private appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    const/16 v9, 0x3a

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 1829
    if-eqz p4, :cond_54

    .line 1830
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1831
    if-eqz p3, :cond_1e

    .line 1832
    sget-wide v4, Ljava/net/URI;->L_USERINFO:J

    sget-wide v6, Ljava/net/URI;->H_USERINFO:J

    invoke-static {p3, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1833
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1835
    :cond_1e
    invoke-virtual {p4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_52

    .line 1836
    const-string/jumbo v4, "["

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1835
    if-eqz v4, :cond_52

    .line 1837
    const-string/jumbo v4, "]"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    .line 1838
    :goto_38
    if-eqz v3, :cond_3f

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1839
    :cond_3f
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1840
    if-eqz v3, :cond_49

    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1841
    :cond_49
    if-eq p5, v8, :cond_51

    .line 1842
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1843
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1871
    :cond_51
    :goto_51
    return-void

    .line 1835
    :cond_52
    const/4 v3, 0x0

    .local v3, "needBrackets":Z
    goto :goto_38

    .line 1845
    .end local v3    # "needBrackets":Z
    :cond_54
    if-eqz p2, :cond_51

    .line 1846
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1847
    const-string/jumbo v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 1849
    const-string/jumbo v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1850
    .local v2, "end":I
    move-object v1, p2

    .local v1, "doquote":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 1851
    .local v0, "dontquote":Ljava/lang/String;
    if-eq v2, v8, :cond_85

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_85

    .line 1853
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_9a

    .line 1854
    move-object v0, p2

    .line 1855
    const-string/jumbo v1, ""

    .line 1861
    :cond_85
    :goto_85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1864
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1862
    invoke-static {v1, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 1857
    :cond_9a
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1858
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_85

    .line 1867
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_a7
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1868
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1866
    invoke-static {p2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .prologue
    .line 2682
    const/4 v1, 0x0

    .line 2684
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_1
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 2685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 2684
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_23
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_23} :catch_39

    move-result-object v1

    .line 2689
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_24
    :goto_24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2690
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 2691
    .local v0, "b":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_44

    .line 2692
    int-to-byte v3, v0

    invoke-static {p0, v3}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_24

    .line 2686
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_39
    move-exception v2

    .line 2687
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v3, :cond_24

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2694
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    :cond_44
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 2696
    .end local v0    # "b":I
    :cond_49
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 2676
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2677
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2678
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2679
    return-void
.end method

.method private appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1915
    if-eqz p2, :cond_12

    .line 1916
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1917
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1919
    :cond_12
    return-void
.end method

.method private appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;

    .prologue
    .line 1882
    if-eqz p2, :cond_52

    .line 1886
    const-string/jumbo v2, "//["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1887
    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1888
    .local v10, "end":I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_37

    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    .line 1890
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v10, v2, :cond_38

    .line 1891
    move-object v8, p2

    .line 1892
    .local v8, "dontquote":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1897
    .local v9, "doquote":Ljava/lang/String;
    :goto_29
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1898
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {v9, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1912
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_37
    :goto_37
    return-void

    .line 1894
    .restart local v10    # "end":I
    :cond_38
    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1895
    .restart local v8    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "doquote":Ljava/lang/String;
    goto :goto_29

    .line 1901
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_46
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    :cond_52
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 1904
    invoke-direct/range {v2 .. v7}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1905
    if-eqz p7, :cond_6c

    .line 1906
    sget-wide v2, Ljava/net/URI;->L_PATH:J

    sget-wide v4, Ljava/net/URI;->H_PATH:J

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1907
    :cond_6c
    if-eqz p8, :cond_37

    .line 1908
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1909
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37
.end method

.method private static checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1815
    if-eqz p1, :cond_1c

    .line 1816
    if-eqz p2, :cond_1c

    .line 1817
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1c

    .line 1818
    new-instance v0, Ljava/net/URISyntaxException;

    .line 1819
    const-string/jumbo v1, "Relative path in absolute URI"

    .line 1818
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1821
    :cond_1c
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1775
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1776
    :cond_4
    if-eqz p0, :cond_f

    .line 1777
    if-eqz p1, :cond_d

    .line 1778
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1780
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 1782
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method private static compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1788
    if-ne p0, p1, :cond_4

    return v5

    .line 1789
    :cond_4
    if-eqz p0, :cond_35

    .line 1790
    if-eqz p1, :cond_33

    .line 1791
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1792
    .local v3, "sn":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1793
    .local v4, "tn":I
    if-ge v3, v4, :cond_2b

    move v2, v3

    .line 1794
    .local v2, "n":I
    :goto_13
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_30

    .line 1795
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/net/URI;->toLower(C)I

    move-result v6

    sub-int v0, v5, v6

    .line 1796
    .local v0, "c":I
    if-eqz v0, :cond_2d

    .line 1797
    return v0

    .line 1793
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2b
    move v2, v4

    .restart local v2    # "n":I
    goto :goto_13

    .line 1794
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1799
    .end local v0    # "c":I
    :cond_30
    sub-int v5, v3, v4

    return v5

    .line 1801
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sn":I
    .end local v4    # "tn":I
    :cond_33
    const/4 v5, 0x1

    return v5

    .line 1803
    :cond_35
    const/4 v5, -0x1

    return v5
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 845
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 846
    :catch_6
    move-exception v0

    .line 847
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decode(CC)B
    .registers 4
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 2782
    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    .line 2783
    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x0

    .line 2782
    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static decode(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 2771
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2772
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 2773
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 2774
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2775
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 2776
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2777
    :cond_25
    sget-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2778
    :cond_2f
    const/4 v0, -0x1

    return v0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x25

    const/4 v12, 0x0

    .line 2794
    if-nez p0, :cond_6

    .line 2795
    return-object p0

    .line 2796
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 2797
    .local v7, "n":I
    if-nez v7, :cond_d

    .line 2798
    return-object p0

    .line 2799
    :cond_d
    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_14

    .line 2800
    return-object p0

    .line 2802
    :cond_14
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2803
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2804
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 2805
    .local v3, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2806
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2805
    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2807
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2805
    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 2810
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2811
    .local v2, "c":C
    const/4 v1, 0x0

    .line 2813
    .local v1, "betweenBrackets":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3a
    if-ge v6, v7, :cond_5c

    .line 2814
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_4c

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v2, v10, :cond_4c

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2815
    :cond_4c
    const/16 v10, 0x5b

    if-ne v2, v10, :cond_61

    .line 2816
    const/4 v1, 0x1

    .line 2820
    :cond_51
    :goto_51
    if-ne v2, v13, :cond_55

    if-eqz v1, :cond_6e

    .line 2821
    :cond_55
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2822
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_69

    .line 2848
    :cond_5c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 2817
    :cond_61
    if-eqz v1, :cond_51

    const/16 v10, 0x5d

    if-ne v2, v10, :cond_51

    .line 2818
    const/4 v1, 0x0

    goto :goto_51

    .line 2824
    :cond_69
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3a

    .line 2827
    :cond_6e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2828
    move v9, v6

    .line 2830
    .local v9, "ui":I
    :cond_72
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_81

    sub-int v10, v7, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_81

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2831
    :cond_81
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v10, v11}, Ljava/net/URI;->decode(CC)B

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2832
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_b6

    .line 2838
    :goto_98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2839
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 2840
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 2841
    const/4 v10, 0x1

    invoke-virtual {v5, v0, v3, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2842
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_bd

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_bd

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2834
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_b6
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2835
    if-eq v2, v13, :cond_72

    goto :goto_98

    .line 2843
    .restart local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_bd
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2844
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_d1

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_d1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2845
    :cond_d1
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3a
.end method

.method private defineSchemeSpecificPart()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1944
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v0, :cond_6

    return-void

    .line 1945
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1946
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 1947
    iget-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v6, p0, Ljava/net/URI;->port:I

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 1946
    invoke-direct/range {v0 .. v8}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 1949
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1950
    return-void
.end method

.method private defineString()V
    .registers 6

    .prologue
    const/16 v4, 0x3a

    .line 1953
    iget-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v2, :cond_7

    return-void

    .line 1955
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1956
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1957
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1958
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1960
    :cond_18
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1961
    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1990
    :cond_23
    :goto_23
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 1991
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1992
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1994
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1995
    return-void

    .line 1963
    :cond_38
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_ab

    .line 1964
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1965
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_50

    .line 1966
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1967
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1969
    :cond_50
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a9

    .line 1970
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1969
    if-eqz v2, :cond_a9

    .line 1971
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 1972
    :goto_70
    if-eqz v0, :cond_77

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1973
    :cond_77
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1974
    if-eqz v0, :cond_83

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1975
    :cond_83
    iget v2, p0, Ljava/net/URI;->port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_90

    .line 1976
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1977
    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1983
    :cond_90
    :goto_90
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v2, :cond_99

    .line 1984
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1985
    :cond_99
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 1986
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1987
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    .line 1969
    :cond_a9
    const/4 v0, 0x0

    .local v0, "needBrackets":Z
    goto :goto_70

    .line 1979
    .end local v0    # "needBrackets":Z
    :cond_ab
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_90

    .line 1980
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_90
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    .line 2738
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2739
    .local v3, "n":I
    if-nez v3, :cond_9

    .line 2740
    return-object p0

    .line 2743
    :cond_9
    const/4 v2, 0x0

    .line 2744
    .local v2, "i":I
    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v9, :cond_3e

    .line 2750
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 2751
    .local v4, "ns":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2753
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_17
    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    .line 2754
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 2753
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_25
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_17 .. :try_end_25} :catch_43

    move-result-object v1

    .line 2759
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_26
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2760
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_2b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2761
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 2762
    .local v0, "b":I
    if-lt v0, v9, :cond_4e

    .line 2763
    int-to-byte v7, v0

    invoke-static {v5, v7}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_2b

    .line 2746
    .end local v0    # "b":I
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_a

    .line 2747
    return-object p0

    .line 2755
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v4    # "ns":Ljava/lang/String;
    :catch_43
    move-exception v6

    .line 2756
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v7, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v7, :cond_26

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2765
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4e
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 2767
    .end local v0    # "b":I
    :cond_53
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x25

    const/4 v6, 0x0

    .line 1693
    if-ne p0, p1, :cond_7

    return v8

    .line 1694
    :cond_7
    if-eqz p0, :cond_69

    if-eqz p1, :cond_69

    .line 1695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_16

    .line 1696
    return v6

    .line 1697
    :cond_16
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_21

    .line 1698
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 1699
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1700
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v3, :cond_68

    .line 1701
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1702
    .local v0, "c":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1703
    .local v1, "d":C
    if-eq v0, v7, :cond_38

    .line 1704
    if-eq v0, v1, :cond_35

    .line 1705
    return v6

    .line 1706
    :cond_35
    add-int/lit8 v2, v2, 0x1

    .line 1707
    goto :goto_26

    .line 1709
    :cond_38
    if-eq v1, v7, :cond_3b

    .line 1710
    return v6

    .line 1711
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    .line 1712
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_50

    .line 1713
    return v6

    .line 1714
    :cond_50
    add-int/lit8 v2, v2, 0x1

    .line 1715
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_65

    .line 1716
    return v6

    .line 1717
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1719
    .end local v0    # "c":C
    .end local v1    # "d":C
    :cond_68
    return v8

    .line 1721
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_69
    return v6
.end method

.method private static equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1726
    if-ne p0, p1, :cond_5

    return v5

    .line 1727
    :cond_5
    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    .line 1728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1729
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_14

    .line 1730
    return v4

    .line 1731
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v1, :cond_2d

    .line 1732
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/net/URI;->toLower(C)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/net/URI;->toLower(C)I

    move-result v3

    if-eq v2, v3, :cond_2a

    .line 1733
    return v4

    .line 1731
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1735
    :cond_2d
    return v5

    .line 1737
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2e
    return v4
.end method

.method private static hash(ILjava/lang/String;)I
    .registers 4
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1741
    if-nez p1, :cond_3

    return p0

    .line 1742
    :cond_3
    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_13

    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_12
    return v0

    .line 1743
    :cond_13
    invoke-static {p0, p1}, Ljava/net/URI;->normalizedHash(ILjava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method private static hashIgnoringCase(ILjava/lang/String;)I
    .registers 7
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1766
    if-nez p1, :cond_3

    return p0

    .line 1767
    :cond_3
    move v0, p0

    .line 1768
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1769
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 1770
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    add-int v0, v3, v4

    .line 1769
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1771
    :cond_1a
    return v0
.end method

.method private static highMask(CC)J
    .registers 10
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x40

    .line 2528
    const-wide/16 v4, 0x0

    .line 2529
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    .line 2530
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    .line 2531
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_1b
    if-gt v1, v2, :cond_24

    .line 2532
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2531
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2533
    :cond_24
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2505
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2506
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v4, :cond_1e

    .line 2507
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2508
    .local v0, "c":C
    const/16 v5, 0x40

    if-lt v0, v5, :cond_1b

    const/16 v5, 0x80

    if-ge v0, v5, :cond_1b

    .line 2509
    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 2506
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2511
    .end local v0    # "c":C
    :cond_1e
    return-wide v2
.end method

.method private static join([C[I)I
    .registers 12
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v9, 0x2f

    const/4 v8, 0x0

    .line 2300
    array-length v2, p1

    .line 2301
    .local v2, "ns":I
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .line 2302
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2304
    .local v3, "p":I
    aget-char v7, p0, v3

    if-nez v7, :cond_f

    .line 2306
    const/4 v3, 0x1

    aput-char v9, p0, v8

    .line 2309
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_4f

    .line 2310
    aget v5, p1, v1

    .line 2311
    .local v5, "q":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1a

    .line 2309
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2315
    :cond_1a
    if-ne v3, v5, :cond_2e

    move v4, v3

    .line 2317
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_1d
    if-gt v4, v0, :cond_27

    aget-char v7, p0, v4

    if-eqz v7, :cond_27

    .line 2318
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1d

    .line 2319
    :cond_27
    if-gt v4, v0, :cond_53

    .line 2321
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    goto :goto_17

    .line 2323
    :cond_2e
    if-ge v3, v5, :cond_49

    :goto_30
    move v6, v5

    .end local v5    # "q":I
    .local v6, "q":I
    move v4, v3

    .line 2325
    .end local v3    # "p":I
    .restart local v4    # "p":I
    if-gt v6, v0, :cond_41

    aget-char v7, p0, v6

    if-eqz v7, :cond_41

    .line 2326
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "q":I
    .restart local v5    # "q":I
    aget-char v7, p0, v6

    aput-char v7, p0, v4

    goto :goto_30

    .line 2327
    .end local v3    # "p":I
    .end local v5    # "q":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_41
    if-gt v6, v0, :cond_50

    .line 2329
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    goto :goto_17

    .line 2332
    :cond_49
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 2335
    .end local v5    # "q":I
    :cond_4f
    return v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_50
    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_17

    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_53
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_17
.end method

.method private static lowMask(CC)J
    .registers 10
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    .line 2517
    const-wide/16 v4, 0x0

    .line 2518
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2519
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2520
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_16
    if-gt v1, v2, :cond_1f

    .line 2521
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2522
    :cond_1f
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2492
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2493
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2494
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v4, :cond_18

    .line 2495
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2496
    .local v0, "c":C
    const/16 v5, 0x40

    if-ge v0, v5, :cond_15

    .line 2497
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 2494
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2499
    .end local v0    # "c":C
    :cond_18
    return-wide v2
.end method

.method private static match(CJJ)Z
    .registers 14
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2538
    if-nez p0, :cond_9

    .line 2539
    return v1

    .line 2540
    :cond_9
    const/16 v2, 0x40

    if-ge p0, v2, :cond_17

    .line 2541
    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    .line 2542
    :cond_17
    const/16 v2, 0x80

    if-ge p0, v2, :cond_27

    .line 2543
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24

    .line 2544
    :cond_27
    return v1
.end method

.method private static maybeAddLeadingDot([C[I)V
    .registers 8
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2405
    aget-char v3, p0, v5

    if-nez v3, :cond_6

    .line 2407
    return-void

    .line 2409
    :cond_6
    array-length v1, p1

    .line 2410
    .local v1, "ns":I
    const/4 v0, 0x0

    .line 2411
    .local v0, "f":I
    :goto_8
    if-ge v0, v1, :cond_e

    .line 2412
    aget v3, p1, v0

    if-ltz v3, :cond_13

    .line 2416
    :cond_e
    if-ge v0, v1, :cond_12

    if-nez v0, :cond_16

    .line 2419
    :cond_12
    return-void

    .line 2414
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2421
    :cond_16
    aget v2, p1, v0

    .line 2422
    .local v2, "p":I
    :goto_18
    array-length v3, p0

    if-ge v2, v3, :cond_28

    aget-char v3, p0, v2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_28

    aget-char v3, p0, v2

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2423
    :cond_28
    array-length v3, p0

    if-ge v2, v3, :cond_2f

    aget-char v3, p0, v2

    if-nez v3, :cond_30

    .line 2425
    :cond_2f
    return-void

    .line 2429
    :cond_30
    const/16 v3, 0x2e

    aput-char v3, p0, v5

    .line 2430
    const/4 v3, 0x1

    aput-char v5, p0, v3

    .line 2431
    aput v5, p1, v5

    .line 2432
    return-void
.end method

.method private static needsNormalization(Ljava/lang/String;)I
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x2f

    .line 2194
    const/4 v1, 0x1

    .line 2195
    .local v1, "normal":Z
    const/4 v2, 0x0

    .line 2196
    .local v2, "ns":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2197
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2200
    .local v3, "p":I
    :goto_d
    if-gt v3, v0, :cond_15

    .line 2201
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4f

    .line 2204
    :cond_15
    const/4 v5, 0x1

    if-le v3, v5, :cond_19

    const/4 v1, 0x0

    .line 2207
    :cond_19
    :goto_19
    if-gt v3, v0, :cond_5e

    .line 2210
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_40

    .line 2211
    if-eq v3, v0, :cond_3f

    .line 2212
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3f

    .line 2213
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_40

    .line 2214
    add-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_3f

    .line 2215
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_40

    .line 2216
    :cond_3f
    const/4 v1, 0x0

    .line 2218
    :cond_40
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .line 2221
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_43
    if-gt v4, v0, :cond_62

    .line 2222
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_55

    move v4, v3

    .line 2223
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_43

    .line 2202
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2228
    :cond_52
    const/4 v1, 0x0

    .line 2229
    add-int/lit8 v3, v3, 0x1

    .line 2226
    :cond_55
    if-gt v3, v0, :cond_19

    .line 2227
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_52

    goto :goto_19

    .line 2236
    :cond_5e
    if-eqz v1, :cond_61

    const/4 v2, -0x1

    .end local v2    # "ns":I
    :cond_61
    return v2

    .end local v3    # "p":I
    .restart local v2    # "ns":I
    .restart local v4    # "p":I
    :cond_62
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_19
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "ps"    # Ljava/lang/String;

    .prologue
    .line 2442
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p0, "ps"    # Ljava/lang/String;
    .param p1, "removeLeading"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2448
    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    move-result v0

    .line 2449
    .local v0, "ns":I
    if-gez v0, :cond_8

    .line 2451
    return-object p0

    .line 2453
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2456
    .local v1, "path":[C
    new-array v3, v0, [I

    .line 2457
    .local v3, "segs":[I
    invoke-static {v1, v3}, Ljava/net/URI;->split([C[I)V

    .line 2460
    invoke-static {v1, v3, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    .line 2463
    invoke-static {v1, v3}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    .line 2466
    new-instance v2, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URI;->join([C[I)I

    move-result v4

    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2467
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2469
    return-object p0

    .line 2471
    :cond_27
    return-object v2
.end method

.method private static normalize(Ljava/net/URI;)Ljava/net/URI;
    .registers 4
    .param p0, "u"    # Ljava/net/URI;

    .prologue
    .line 2111
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 2112
    :cond_a
    return-object p0

    .line 2111
    :cond_b
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 2114
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    .local v0, "np":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ne v0, v2, :cond_1e

    .line 2116
    return-object p0

    .line 2118
    :cond_1e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 2119
    .local v1, "v":Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2120
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2121
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2122
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2123
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2124
    iget v2, p0, Ljava/net/URI;->port:I

    iput v2, v1, Ljava/net/URI;->port:I

    .line 2125
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2126
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2127
    return-object v1
.end method

.method private static normalizedHash(ILjava/lang/String;)I
    .registers 8
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1748
    const/4 v1, 0x0

    .line 1749
    .local v1, "h":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 1750
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1751
    .local v0, "ch":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 1752
    const/16 v4, 0x25

    if-ne v0, v4, :cond_2b

    .line 1756
    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_16
    add-int/lit8 v4, v3, 0x3

    if-ge v2, v4, :cond_29

    .line 1757
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toUpper(C)I

    move-result v5

    add-int v1, v4, v5

    .line 1756
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1758
    :cond_29
    add-int/lit8 v3, v3, 0x2

    .line 1749
    .end local v2    # "i":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1761
    .end local v0    # "ch":C
    :cond_2e
    mul-int/lit8 v4, p0, 0x7f

    add-int/2addr v4, v1

    return v4
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const/4 v10, 0x0

    .line 2702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2703
    .local v3, "n":I
    const/4 v4, 0x0

    .line 2704
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3a

    const/4 v0, 0x1

    .line 2705
    .local v0, "allowNonASCII":Z
    :goto_10
    const/4 v2, 0x0

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_68

    .line 2706
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2707
    .local v1, "c":C
    const/16 v5, 0x80

    if-ge v1, v5, :cond_42

    .line 2708
    invoke-static {v1, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 2709
    if-nez v4, :cond_33

    .line 2710
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2711
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2713
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_33
    int-to-byte v5, v1

    invoke-static {v4, v5}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    .line 2705
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2704
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .local v4, "sb":Ljava/lang/StringBuffer;
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "allowNonASCII":Z
    goto :goto_10

    .line 2715
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3c
    if-eqz v4, :cond_37

    .line 2716
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 2718
    :cond_42
    if-eqz v0, :cond_62

    .line 2719
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_50

    .line 2720
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    .line 2718
    if-eqz v5, :cond_62

    .line 2721
    :cond_50
    if-nez v4, :cond_5e

    .line 2722
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2723
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2725
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_5e
    invoke-static {v4, v1}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_37

    .line 2727
    :cond_62
    if-eqz v4, :cond_37

    .line 2728
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 2731
    .end local v1    # "c":C
    :cond_68
    if-nez v4, :cond_6b

    .end local p0    # "s":Ljava/lang/String;
    :goto_6a
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_6b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6a
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    const/4 v2, -0x1

    iput v2, p0, Ljava/net/URI;->port:I

    .line 1655
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1657
    :try_start_6
    new-instance v2, Ljava/net/URI$Parser;

    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_11} :catch_12

    .line 1663
    return-void

    .line 1658
    :catch_12
    move-exception v0

    .line 1659
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Invalid URI"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v1, "y":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1661
    throw v1
.end method

.method private static relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/16 v5, 0x2f

    .line 2138
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2139
    :cond_e
    return-object p1

    .line 2140
    :cond_f
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2141
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2140
    if-eqz v3, :cond_26

    .line 2142
    :cond_25
    return-object p1

    .line 2144
    :cond_26
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "bp":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2146
    .local v1, "cp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 2153
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    .line 2154
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2157
    :cond_4a
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 2158
    return-object p1

    .line 2161
    :cond_51
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    .line 2162
    .local v2, "v":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2163
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2164
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2165
    return-object v2
.end method

.method private static removeDots([C[IZ)V
    .registers 13
    .param p0, "path"    # [C
    .param p1, "segs"    # [I
    .param p2, "removeLeading"    # Z

    .prologue
    const/16 v9, 0x2e

    const/4 v8, -0x1

    .line 2343
    array-length v4, p1

    .line 2344
    .local v4, "ns":I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x1

    .line 2346
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_18

    .line 2347
    const/4 v0, 0x0

    .line 2351
    .local v0, "dots":I
    :goto_b
    aget v5, p1, v2

    .line 2352
    .local v5, "p":I
    aget-char v7, p0, v5

    if-ne v7, v9, :cond_33

    .line 2353
    if-ne v5, v1, :cond_19

    .line 2354
    const/4 v0, 0x1

    .line 2368
    :cond_14
    :goto_14
    if-gt v2, v4, :cond_18

    if-nez v0, :cond_38

    .line 2397
    .end local v0    # "dots":I
    .end local v5    # "p":I
    :cond_18
    return-void

    .line 2356
    .restart local v0    # "dots":I
    .restart local v5    # "p":I
    :cond_19
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-nez v7, :cond_21

    .line 2357
    const/4 v0, 0x1

    .line 2358
    goto :goto_14

    .line 2359
    :cond_21
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-ne v7, v9, :cond_33

    .line 2360
    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_31

    .line 2361
    add-int/lit8 v7, v5, 0x2

    aget-char v7, p0, v7

    if-nez v7, :cond_33

    .line 2362
    :cond_31
    const/4 v0, 0x2

    .line 2363
    goto :goto_14

    .line 2366
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 2367
    if-ge v2, v4, :cond_14

    goto :goto_b

    .line 2371
    :cond_38
    const/4 v7, 0x1

    if-ne v0, v7, :cond_40

    .line 2373
    aput v8, p1, v2

    .line 2346
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2378
    :cond_40
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_42
    if-ltz v3, :cond_48

    .line 2379
    aget v7, p1, v3

    if-eq v7, v8, :cond_5b

    .line 2381
    :cond_48
    if-ltz v3, :cond_65

    .line 2382
    aget v6, p1, v3

    .line 2383
    .local v6, "q":I
    aget-char v7, p0, v6

    if-ne v7, v9, :cond_56

    .line 2384
    add-int/lit8 v7, v6, 0x1

    aget-char v7, p0, v7

    if-eq v7, v9, :cond_5e

    .line 2386
    :cond_56
    :goto_56
    aput v8, p1, v2

    .line 2387
    aput v8, p1, v3

    goto :goto_3d

    .line 2378
    .end local v6    # "q":I
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_42

    .line 2385
    .restart local v6    # "q":I
    :cond_5e
    add-int/lit8 v7, v6, 0x2

    aget-char v7, p0, v7

    if-eqz v7, :cond_3d

    goto :goto_56

    .line 2389
    .end local v6    # "q":I
    :cond_65
    if-eqz p2, :cond_3d

    .line 2393
    aput v8, p1, v2

    goto :goto_3d
.end method

.method private static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 6
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/4 v3, 0x0

    .line 2035
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2036
    :cond_d
    return-object p1

    .line 2039
    :cond_e
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_5e

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_5e

    .line 2040
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2039
    if-eqz v1, :cond_5e

    .line 2040
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 2041
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_5e

    .line 2042
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 2043
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2042
    if-eqz v1, :cond_38

    .line 2044
    return-object p0

    .line 2046
    :cond_38
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2047
    .local v0, "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2048
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2049
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2050
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2051
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2052
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2053
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2054
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2055
    return-object v0

    .line 2059
    .end local v0    # "ru":Ljava/net/URI;
    :cond_5e
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 2060
    return-object p1

    .line 2062
    :cond_63
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2063
    .restart local v0    # "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2064
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2065
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2068
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_cf

    .line 2069
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2070
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2071
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2072
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2074
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_94

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 2081
    :cond_94
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2082
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_a1

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_9e
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2104
    :goto_a0
    return-object v0

    .line 2082
    :cond_a1
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_9e

    .line 2083
    :cond_a4
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c0

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_c0

    .line 2089
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_a0

    .line 2092
    :cond_c0
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_a0

    .line 2095
    :cond_cf
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2096
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2097
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2098
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2099
    iget v1, p1, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2100
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_a0
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2004
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2005
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2006
    .local v0, "cn":I
    const-string/jumbo v3, ""

    .line 2008
    .local v3, "path":Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 2010
    if-ltz v1, :cond_18

    .line 2011
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2023
    :cond_18
    :goto_18
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2028
    .local v2, "np":Ljava/lang/String;
    return-object v2

    .line 2013
    .end local v2    # "np":Ljava/lang/String;
    :cond_1e
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2015
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ltz v1, :cond_33

    .line 2016
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2018
    :cond_33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2019
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method

.method private static split([C[I)V
    .registers 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x0

    .line 2251
    array-length v5, p0

    add-int/lit8 v0, v5, -0x1

    .line 2252
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2253
    .local v3, "p":I
    const/4 v1, 0x0

    .line 2256
    .local v1, "i":I
    :goto_8
    if-gt v3, v0, :cond_34

    .line 2257
    aget-char v5, p0, v3

    if-eq v5, v7, :cond_23

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, v3

    .line 2262
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_10
    if-gt v4, v0, :cond_3d

    .line 2265
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput v4, p1, v2

    move v4, v3

    .line 2268
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_19
    if-gt v4, v0, :cond_47

    .line 2269
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_28

    move v4, v3

    .line 2270
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_19

    .line 2258
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_23
    aput-char v6, p0, v3

    .line 2259
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2271
    :cond_28
    add-int/lit8 v5, v3, -0x1

    aput-char v6, p0, v5

    move v4, v3

    .line 2274
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_2d
    if-gt v4, v0, :cond_33

    .line 2275
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_37

    :cond_33
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_34
    :goto_34
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_10

    .line 2276
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_37
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v6, p0, v4

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2d

    .line 2282
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3d
    array-length v5, p1

    if-eq v2, v5, :cond_46

    .line 2283
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 2284
    :cond_46
    return-void

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_47
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_34
.end method

.method private static toLower(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1680
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 1681
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 1682
    :cond_b
    return p0
.end method

.method private toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1931
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1932
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_f

    .line 1933
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1934
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_f
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1936
    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toUpper(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1687
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 1688
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 1689
    :cond_b
    return p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1638
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1639
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1472
    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .registers 5
    .param p1, "that"    # Ljava/net/URI;

    .prologue
    .line 1543
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "c":I
    if-eqz v0, :cond_b

    .line 1544
    return v0

    .line 1546
    :cond_b
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1547
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1549
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1550
    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1549
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 1551
    return v0

    .line 1552
    :cond_22
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1554
    :cond_2b
    const/4 v1, 0x1

    return v1

    .line 1555
    :cond_2d
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1556
    const/4 v1, -0x1

    return v1

    .line 1560
    :cond_35
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 1562
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_48

    .line 1563
    return v0

    .line 1564
    :cond_48
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_53

    .line 1565
    return v0

    .line 1566
    :cond_53
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_67

    .line 1567
    return v0

    .line 1575
    :cond_5c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_67

    return v0

    .line 1578
    :cond_67
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_72

    return v0

    .line 1579
    :cond_72
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7d

    return v0

    .line 1580
    :cond_7d
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1409
    if-ne p1, p0, :cond_5

    .line 1410
    return v4

    .line 1411
    :cond_5
    instance-of v1, p1, Ljava/net/URI;

    if-nez v1, :cond_a

    .line 1412
    return v3

    :cond_a
    move-object v0, p1

    .line 1413
    check-cast v0, Ljava/net/URI;

    .line 1414
    .local v0, "that":Ljava/net/URI;
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 1415
    :cond_18
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 1416
    :cond_23
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v3

    .line 1419
    :cond_2e
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1420
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1423
    :cond_3d
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    .line 1424
    :cond_48
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    return v3

    .line 1427
    :cond_53
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-ne v1, v2, :cond_5a

    return v4

    .line 1428
    :cond_5a
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7b

    .line 1430
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    return v3

    .line 1431
    :cond_69
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    return v3

    .line 1432
    :cond_74
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, v0, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_91

    return v3

    .line 1433
    :cond_7b
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_8a

    .line 1435
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_91

    return v3

    .line 1436
    :cond_8a
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eq v1, v2, :cond_91

    .line 1437
    return v3

    .line 1440
    :cond_91
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1191
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1192
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 1193
    :cond_c
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1364
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 1365
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1263
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1305
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1306
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 1307
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1276
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1334
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1335
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 1336
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1349
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1142
    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    .line 1143
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1103
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1159
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 1160
    :cond_e
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1222
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 1223
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1451
    iget v1, p0, Ljava/net/URI;->hash:I

    if-eqz v1, :cond_8

    .line 1452
    iget v1, p0, Ljava/net/URI;->hash:I

    return v1

    .line 1453
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1454
    .local v0, "h":I
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1455
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1456
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1468
    :goto_20
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1469
    return v0

    .line 1458
    :cond_23
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1459
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1460
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 1461
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1462
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1463
    iget v1, p0, Ljava/net/URI;->port:I

    mul-int/lit16 v1, v1, 0x79d

    add-int/2addr v0, v1

    goto :goto_20

    .line 1465
    :cond_45
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    goto :goto_20
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public normalize()Ljava/net/URI;
    .registers 2

    .prologue
    .line 952
    invoke-static {p0}, Ljava/net/URI;->normalize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 908
    :cond_8
    return-object p0

    .line 909
    :cond_9
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 910
    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 911
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1061
    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1010
    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toASCIIString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1616
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1617
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1598
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1599
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1083
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_f
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
