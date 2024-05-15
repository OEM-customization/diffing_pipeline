.class Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    .line 35
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "reasons"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V
    .registers 3
    .param p1, "reasons"    # Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 21
    return-void
.end method


# virtual methods
.method addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V
    .registers 4
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 54
    return-void
.end method

.method getReasons()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .registers 6
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    .prologue
    const/4 v0, 0x0

    .line 89
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v2

    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 6
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 77
    .local v0, "_mask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 78
    return-object v0
.end method

.method isAllReasons()Z
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
