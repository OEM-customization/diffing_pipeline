.class public abstract Lcom/android/org/bouncycastle/math/field/FiniteFields;
.super Ljava/lang/Object;
.source "FiniteFields.java"


# static fields
.field static final GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field static final GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 7
    new-instance v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 8
    new-instance v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;
    .registers 5
    .param p0, "exponents"    # [I

    .prologue
    const/4 v1, 0x0

    .line 12
    aget v1, p0, v1

    if-eqz v1, :cond_e

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_e
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 18
    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-gt v1, v2, :cond_23

    .line 20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Polynomial exponents must be montonically increasing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 24
    :cond_26
    new-instance v1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    sget-object v2, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    new-instance v3, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;

    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/math/field/GF2Polynomial;-><init>([I)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;Lcom/android/org/bouncycastle/math/field/Polynomial;)V

    return-object v1
.end method

.method public static getPrimeField(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 4
    .param p0, "characteristic"    # Ljava/math/BigInteger;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 35
    .local v0, "bitLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    .line 37
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\'characteristic\' must be >= 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_16
    const/4 v1, 0x3

    if-ge v0, v1, :cond_20

    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 51
    :cond_20
    new-instance v1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 45
    :pswitch_26
    sget-object v1, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_2:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 47
    :pswitch_29
    sget-object v1, Lcom/android/org/bouncycastle/math/field/FiniteFields;->GF_3:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object v1

    .line 42
    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method
