.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final x:Ljava/math/BigInteger;

.field private final y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 52
    iput-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 65
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "affine coordinate x or y is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_10
    iput-object p1, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    .line 68
    iput-object p2, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_5
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p0, v0, :cond_a

    return v1

    .line 99
    :cond_a
    instance-of v0, p1, Ljava/security/spec/ECPoint;

    if-eqz v0, :cond_28

    .line 100
    iget-object v2, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECPoint;

    iget-object v0, v0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 101
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    check-cast p1, Ljava/security/spec/ECPoint;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    :goto_25
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_26
    move v0, v1

    goto :goto_25

    .line 103
    :cond_28
    return v1
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 111
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_6
    iget-object v0, p0, Ljava/security/spec/ECPoint;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/spec/ECPoint;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    shl-int/2addr v0, v1

    return v0
.end method
