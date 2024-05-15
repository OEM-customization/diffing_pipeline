.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Byte$ByteCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x1

.field public static final whitelist test-api MAX_VALUE:B = 0x7ft

.field public static final whitelist test-api MIN_VALUE:B = -0x80t

.field public static final whitelist test-api SIZE:I = 0x8

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final greylist-max-p value:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    const-string v0, "byte"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(B)V
    .registers 2
    .param p1, "value"    # B
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 311
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    .line 312
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 334
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    iput-byte v0, p0, Ljava/lang/Byte;->value:B

    .line 335
    return-void
.end method

.method public static whitelist test-api compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 478
    sub-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api compareUnsigned(BB)I
    .registers 4
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 494
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 5
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 283
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    .local v0, "i":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_16

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_16

    .line 287
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 285
    :cond_16
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range from input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api hashCode(B)I
    .registers 1
    .param p0, "value"    # B

    .line 426
    return p0
.end method

.method public static whitelist test-api parseByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 181
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseByte(Ljava/lang/String;I)B
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 155
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "i":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_e

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_e

    .line 159
    int-to-byte v1, v0

    return v1

    .line 157
    :cond_e
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value out of range. Value:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" Radix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist toHexString(BZ)Ljava/lang/String;
    .registers 3
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    .line 563
    invoke-static {p0, p1}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(B)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # B

    .line 78
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedInt(B)I
    .registers 2
    .param p0, "x"    # B

    .line 514
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static whitelist test-api toUnsignedLong(B)J
    .registers 5
    .param p0, "x"    # B

    .line 534
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api valueOf(B)Ljava/lang/Byte;
    .registers 4
    .param p0, "b"    # B

    .line 108
    const/16 v0, 0x80

    .line 109
    .local v0, "offset":I
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    add-int/lit16 v2, p0, 0x80

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 237
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 211
    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 344
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Byte;)I
    .registers 4
    .param p1, "anotherByte"    # Ljava/lang/Byte;

    .line 460
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    iget-byte v1, p1, Ljava/lang/Byte;->value:B

    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 48
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 389
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 440
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 441
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    move-object v2, p1

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 443
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 380
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 414
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->hashCode(B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 362
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 371
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 353
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 403
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
