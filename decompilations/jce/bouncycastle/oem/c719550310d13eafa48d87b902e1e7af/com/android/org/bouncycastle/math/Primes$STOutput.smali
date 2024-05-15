.class public Lcom/android/org/bouncycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOutput"
.end annotation


# instance fields
.field private prime:Ljava/math/BigInteger;

.field private primeGenCounter:I

.field private primeSeed:[B


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .registers 4
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    .line 82
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    .line 83
    iput p3, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V
    .registers 5
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I
    .param p4, "-this3"    # Lcom/android/org/bouncycastle/math/Primes$STOutput;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public getPrime()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeGenCounter()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return v0
.end method

.method public getPrimeSeed()[B
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    return-object v0
.end method
