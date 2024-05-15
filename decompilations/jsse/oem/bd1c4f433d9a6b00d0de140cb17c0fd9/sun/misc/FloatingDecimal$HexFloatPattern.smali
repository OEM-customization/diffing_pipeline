.class Lsun/misc/FloatingDecimal$HexFloatPattern;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HexFloatPattern"
.end annotation


# static fields
.field private static final VALUE:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -get0()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lsun/misc/FloatingDecimal$HexFloatPattern;->VALUE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2053
    const-string/jumbo v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    .line 2051
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/misc/FloatingDecimal$HexFloatPattern;->VALUE:Ljava/util/regex/Pattern;

    .line 2046
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
