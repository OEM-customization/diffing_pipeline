.class Ljava/math/BigDecimal$LongOverflow;
.super Ljava/lang/Object;
.source "BigDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongOverflow"
.end annotation


# static fields
.field private static final blacklist LONGMAX:Ljava/math/BigInteger;

.field private static final blacklist LONGMIN:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3129
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal$LongOverflow;->LONGMIN:Ljava/math/BigInteger;

    .line 3132
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal$LongOverflow;->LONGMAX:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 3127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist check(Ljava/math/BigDecimal;)V
    .registers 4
    .param p0, "num"    # Ljava/math/BigDecimal;

    .line 3135
    # invokes: Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;
    invoke-static {p0}, Ljava/math/BigDecimal;->access$000(Ljava/math/BigDecimal;)Ljava/math/BigInteger;

    move-result-object v0

    .line 3136
    .local v0, "intVal":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigDecimal$LongOverflow;->LONGMIN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_15

    sget-object v1, Ljava/math/BigDecimal$LongOverflow;->LONGMAX:Ljava/math/BigInteger;

    .line 3137
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_15

    .line 3139
    return-void

    .line 3138
    :cond_15
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
