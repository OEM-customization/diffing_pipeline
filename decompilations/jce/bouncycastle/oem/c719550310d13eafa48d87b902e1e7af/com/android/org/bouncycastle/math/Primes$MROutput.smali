.class public Lcom/android/org/bouncycastle/math/Primes$MROutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MROutput"
.end annotation


# instance fields
.field private factor:Ljava/math/BigInteger;

.field private provablyComposite:Z


# direct methods
.method static synthetic -wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 2
    .param p0, "factor"    # Ljava/math/BigInteger;

    .prologue
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(ZLjava/math/BigInteger;)V
    .registers 3
    .param p1, "provablyComposite"    # Z
    .param p2, "factor"    # Ljava/math/BigInteger;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    .line 49
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    .line 50
    return-void
.end method

.method private static probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3
    .param p0, "factor"    # Ljava/math/BigInteger;

    .prologue
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public getFactor()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isNotPrimePower()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 64
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isProvablyComposite()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    return v0
.end method
