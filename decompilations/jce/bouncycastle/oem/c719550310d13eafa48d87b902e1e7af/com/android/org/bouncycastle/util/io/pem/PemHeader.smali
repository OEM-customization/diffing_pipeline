.class public Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
.super Ljava/lang/Object;
.source "PemHeader.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private getHashCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p1, :cond_4

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 62
    if-ne p1, p2, :cond_4

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 69
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 40
    instance-of v2, p1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    if-nez v2, :cond_6

    .line 42
    return v1

    :cond_6
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    .line 47
    .local v0, "other":Lcom/android/org/bouncycastle/util/io/pem/PemHeader;
    if-eq v0, p0, :cond_1e

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getHashCode(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
