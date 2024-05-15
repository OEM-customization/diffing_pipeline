.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api DECIMAL128:Ljava/math/MathContext;

.field public static final whitelist test-api DECIMAL32:Ljava/math/MathContext;

.field public static final whitelist test-api DECIMAL64:Ljava/math/MathContext;

.field private static final blacklist DEFAULT_DIGITS:I = 0x9

.field private static final blacklist DEFAULT_ROUNDINGMODE:Ljava/math/RoundingMode;

.field private static final blacklist MIN_DIGITS:I = 0x0

.field public static final whitelist test-api UNLIMITED:Ljava/math/MathContext;

.field private static final whitelist serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field final greylist-max-o precision:I

.field final greylist-max-o roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 62
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sput-object v0, Ljava/math/MathContext;->DEFAULT_ROUNDINGMODE:Ljava/math/RoundingMode;

    .line 78
    new-instance v0, Ljava/math/MathContext;

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 87
    new-instance v0, Ljava/math/MathContext;

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    .line 96
    new-instance v0, Ljava/math/MathContext;

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 105
    new-instance v0, Ljava/math/MathContext;

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "setPrecision"    # I

    .line 141
    sget-object v0, Ljava/math/MathContext;->DEFAULT_ROUNDINGMODE:Ljava/math/RoundingMode;

    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 142
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/math/RoundingMode;)V
    .registers 5
    .param p1, "setPrecision"    # I
    .param p2, "setRoundingMode"    # Ljava/math/RoundingMode;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-ltz p1, :cond_14

    .line 159
    if-eqz p2, :cond_c

    .line 162
    iput p1, p0, Ljava/math/MathContext;->precision:I

    .line 163
    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 164
    return-void

    .line 160
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null RoundingMode"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digits < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "val"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "bad":Z
    if-eqz p1, :cond_5f

    .line 188
    :try_start_6
    const-string v1, "precision="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 189
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 190
    .local v1, "fence":I
    const/16 v2, 0xa

    .line 191
    .local v2, "off":I
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "setPrecision":I
    const-string v4, "roundingMode="

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 195
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0xd

    .line 196
    .end local v2    # "off":I
    .local v4, "off":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    move-result-object v5

    iput-object v5, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_3c} :catch_56

    .line 200
    .end local v1    # "fence":I
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "off":I
    nop

    .line 202
    if-ltz v3, :cond_42

    .line 205
    iput v3, p0, Ljava/math/MathContext;->precision:I

    .line 206
    return-void

    .line 203
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Digits < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .restart local v1    # "fence":I
    .local v2, "off":I
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "bad":Z
    .end local p0    # "this":Ljava/math/MathContext;
    .end local p1    # "val":Ljava/lang/String;
    throw v4

    .line 188
    .end local v1    # "fence":I
    .end local v2    # "off":I
    .end local v3    # "setPrecision":I
    .restart local v0    # "bad":Z
    .restart local p0    # "this":Ljava/math/MathContext;
    .restart local p1    # "val":Ljava/lang/String;
    :cond_50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "bad":Z
    .end local p0    # "this":Ljava/math/MathContext;
    .end local p1    # "val":Ljava/lang/String;
    throw v1
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_56} :catch_56

    .line 198
    .restart local v0    # "bad":Z
    .restart local p0    # "this":Ljava/math/MathContext;
    .restart local p1    # "val":Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 199
    .local v1, "re":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad string format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_5f
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 316
    iget v0, p0, Ljava/math/MathContext;->precision:I

    if-ltz v0, :cond_14

    .line 320
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v0, :cond_c

    .line 324
    return-void

    .line 321
    :cond_c
    const-string v0, "MathContext: null roundingMode in stream"

    .line 322
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "message":Ljava/lang/String;
    :cond_14
    const-string v0, "MathContext: invalid digits in stream"

    .line 318
    .restart local v0    # "message":Ljava/lang/String;
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "x"    # Ljava/lang/Object;

    .line 251
    instance-of v0, p1, Ljava/math/MathContext;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 252
    return v1

    .line 253
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/math/MathContext;

    .line 254
    .local v0, "mc":Ljava/math/MathContext;
    iget v2, v0, Ljava/math/MathContext;->precision:I

    iget v3, p0, Ljava/math/MathContext;->precision:I

    if-ne v2, v3, :cond_16

    iget-object v2, v0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget-object v3, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist test-api getPrecision()I
    .registers 2

    .line 216
    iget v0, p0, Ljava/math/MathContext;->precision:I

    return v0
.end method

.method public whitelist test-api getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .line 236
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 264
    iget v0, p0, Ljava/math/MathContext;->precision:I

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roundingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 301
    invoke-virtual {v1}, Ljava/math/RoundingMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    return-object v0
.end method
