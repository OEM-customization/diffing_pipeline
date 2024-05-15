.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field static final DEFAULT:I = 0x1

.field private static final PRESERVE_OLD_DC_ENCODING:Z

.field static final RFC1779:I = 0x2

.field static final RFC2253:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final escapedDefault:Ljava/lang/String; = ",+<>;\""

.field private static final hexDigits:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final specialChars1779:Ljava/lang/String; = ",=\n+<>#;\\\""

.field private static final specialChars2253:Ljava/lang/String; = ",=+<>#;\\\""

.field private static final specialCharsDefault:Ljava/lang/String; = ",=\n+<>#;\\\" "


# instance fields
.field final oid:Lsun/security/util/ObjectIdentifier;

.field final value:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "x509"

    const-string/jumbo v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    .line 69
    new-instance v0, Lsun/security/action/GetBooleanAction;

    .line 70
    const-string/jumbo v1, "com.sun.security.preserveOldDCEncoding"

    .line 69
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 156
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .registers 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    const/4 v3, 0x3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "temp":Ljava/lang/StringBuilder;
    :goto_b
    const-string/jumbo v2, "Incorrect AVA format"

    invoke-static {p1, v2}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "c":I
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_35

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    if-ne p2, v3, :cond_3a

    .line 199
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 200
    if-ne v0, v4, :cond_44

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_35
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 207
    :cond_3a
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 208
    if-eq v0, v4, :cond_3a

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3a

    .line 210
    :cond_44
    const/4 v2, -0x1

    if-ne v0, v2, :cond_52

    .line 212
    new-instance v2, Lsun/security/util/DerValue;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 213
    return-void

    .line 216
    :cond_52
    const/16 v2, 0x23

    if-ne v0, v2, :cond_5d

    .line 217
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 223
    :goto_5c
    return-void

    .line 218
    :cond_5d
    const/16 v2, 0x22

    if-ne v0, v2, :cond_6a

    if-eq p2, v3, :cond_6a

    .line 219
    invoke-direct {p0, p1, v1}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_5c

    .line 221
    :cond_6a
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_5c
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 149
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    .line 635
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .registers 5
    .param p1, "derval"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_12

    .line 622
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_12
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 625
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 627
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_4e

    .line 628
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    .line 628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_4e
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "val"    # Lsun/security/util/DerValue;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 119
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_d
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 122
    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 123
    return-void
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .registers 8
    .param p0, "c1"    # I
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 535
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_42

    .line 536
    const-string/jumbo v3, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v3}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "c2":I
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_39

    .line 540
    int-to-char v3, p0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 541
    .local v1, "hi":I
    int-to-char v3, v0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 542
    .local v2, "lo":I
    new-instance v3, Ljava/lang/Byte;

    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    return-object v3

    .line 544
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :cond_39
    new-instance v3, Ljava/io/IOException;

    .line 545
    const-string/jumbo v4, "escaped hex value must include two valid digits"

    .line 544
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    .end local v0    # "c2":I
    :cond_42
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "hexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 554
    .local v2, "n":I
    new-array v0, v2, [B

    .line 555
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_18

    .line 556
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 558
    :cond_18
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private static isDerString(Lsun/security/util/DerValue;Z)Z
    .registers 5
    .param p0, "value"    # Lsun/security/util/DerValue;
    .param p1, "canonical"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1030
    if-eqz p1, :cond_b

    .line 1031
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_12

    .line 1036
    return v1

    .line 1034
    :sswitch_a
    return v2

    .line 1039
    :cond_b
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_1c

    .line 1048
    return v1

    .line 1046
    :sswitch_11
    return v2

    .line 1031
    :sswitch_data_12
    .sparse-switch
        0xc -> :sswitch_a
        0x13 -> :sswitch_a
    .end sparse-switch

    .line 1039
    :sswitch_data_1c
    .sparse-switch
        0xc -> :sswitch_11
        0x13 -> :sswitch_11
        0x14 -> :sswitch_11
        0x16 -> :sswitch_11
        0x1b -> :sswitch_11
        0x1e -> :sswitch_11
    .end sparse-switch
.end method

.method private static isTerminator(II)Z
    .registers 5
    .param p0, "ch"    # I
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 562
    sparse-switch p0, :sswitch_data_e

    .line 570
    return v1

    .line 566
    :sswitch_6
    return v0

    .line 568
    :sswitch_7
    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    .line 562
    nop

    :sswitch_data_e
    .sparse-switch
        -0x1 -> :sswitch_6
        0x2b -> :sswitch_6
        0x2c -> :sswitch_6
        0x3b -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .registers 12
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 262
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 264
    .local v0, "b":B
    const/4 v3, 0x0

    .line 266
    .end local v0    # "b":B
    .local v3, "cNdx":I
    :goto_c
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 268
    .local v2, "c":I
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 300
    :cond_16
    if-nez v3, :cond_8a

    .line 301
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, zero hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_21
    if-eq v2, v9, :cond_25

    if-ne v2, v8, :cond_4f

    .line 275
    :cond_25
    :goto_25
    if-eq v2, v9, :cond_44

    if-eq v2, v8, :cond_44

    .line 276
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 278
    :cond_44
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 279
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_25

    .line 283
    :cond_4f
    const-string/jumbo v5, "0123456789ABCDEF"

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 285
    .local v4, "cVal":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_79

    .line 286
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    int-to-char v7, v2

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    :cond_79
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_88

    .line 291
    mul-int/lit8 v5, v0, 0x10

    int-to-byte v6, v4

    add-int/2addr v5, v6

    int-to-byte v0, v5

    .line 292
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 294
    .end local v0    # "b":B
    :cond_88
    int-to-byte v0, v4

    .restart local v0    # "b":B
    goto :goto_85

    .line 305
    .end local v0    # "b":B
    .end local v4    # "cVal":I
    :cond_8a
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_97

    .line 306
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, odd number of hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_97
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>([B)V

    return-object v5
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .registers 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "c":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v1, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x1

    .line 324
    :goto_d
    const/16 v5, 0x22

    if-eq v0, v5, :cond_73

    .line 325
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_51

    .line 326
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {v0, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_2c

    .line 333
    const/4 v4, 0x0

    .line 337
    .local v4, "isPrintableString":Z
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_d

    .line 342
    .end local v4    # "isPrintableString":Z
    :cond_2c
    const-string/jumbo v5, ",=\n+<>#;\\\""

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_51

    .line 343
    new-instance v5, Ljava/io/IOException;

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid escaped character in AVA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 345
    int-to-char v7, v0

    .line 344
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_61

    .line 351
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 357
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_61
    int-to-char v5, v0

    invoke-static {v5}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v5

    and-int/2addr v4, v5

    .line 358
    .local v4, "isPrintableString":Z
    int-to-char v5, v0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    goto :goto_d

    .line 363
    .end local v4    # "isPrintableString":Z
    :cond_73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_83

    .line 364
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 370
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_83
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 371
    const/16 v5, 0xa

    if-eq v0, v5, :cond_83

    const/16 v5, 0x20

    if-eq v0, v5, :cond_83

    .line 372
    const/4 v5, -0x1

    if-eq v0, v5, :cond_9b

    .line 373
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 379
    :cond_9b
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 380
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 381
    sget-boolean v5, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v5, :cond_bf

    .line 383
    :cond_b3
    new-instance v5, Lsun/security/util/DerValue;

    .line 386
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 383
    const/16 v7, 0x16

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5

    .line 387
    :cond_bf
    if-eqz v4, :cond_cb

    .line 390
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 392
    :cond_cb
    new-instance v5, Lsun/security/util/DerValue;

    .line 395
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    const/16 v7, 0xc

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .registers 16
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "c"    # I
    .param p3, "format"    # I
    .param p4, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x1

    .line 404
    .local v5, "isPrintableString":Z
    const/4 v1, 0x0

    .line 405
    .local v1, "escape":Z
    const/4 v6, 0x1

    .line 406
    .local v6, "leadingChar":Z
    const/4 v7, 0x0

    .line 408
    .end local v5    # "isPrintableString":Z
    .local v7, "spaceCount":I
    :cond_9
    const/4 v1, 0x0

    .line 409
    const/16 v8, 0x5c

    if-ne p2, v8, :cond_c0

    .line 410
    const/4 v1, 0x1

    .line 411
    const-string/jumbo v8, "Invalid trailing backslash"

    invoke-static {p1, v8}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result p2

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {p2, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_3a

    .line 418
    const/4 v5, 0x0

    .line 422
    .restart local v5    # "isPrintableString":Z
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 424
    const/4 v6, 0x0

    .line 504
    .end local v2    # "hexByte":Ljava/lang/Byte;
    .end local v5    # "isPrintableString":Z
    :goto_26
    invoke-static {p2, p3}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 506
    const/4 v8, 0x3

    if-ne p3, v8, :cond_134

    if-lez v7, :cond_134

    .line 507
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_3a
    const/4 v8, 0x1

    if-ne p3, v8, :cond_6a

    .line 430
    const-string/jumbo v8, ",=\n+<>#;\\\" "

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6a

    .line 431
    new-instance v8, Ljava/io/IOException;

    .line 432
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 433
    int-to-char v10, p2

    .line 432
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 433
    const-string/jumbo v10, "\'"

    .line 432
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 431
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 434
    :cond_6a
    const/4 v8, 0x3

    if-ne p3, v8, :cond_f0

    .line 435
    const/16 v8, 0x20

    if-ne p2, v8, :cond_84

    .line 437
    if-nez v6, :cond_f0

    invoke-static {p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_f0

    .line 438
    new-instance v8, Ljava/io/IOException;

    .line 439
    const-string/jumbo v9, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    .line 438
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 443
    :cond_84
    const/16 v8, 0x23

    if-ne p2, v8, :cond_93

    .line 445
    if-nez v6, :cond_f0

    .line 446
    new-instance v8, Ljava/io/IOException;

    .line 447
    const-string/jumbo v9, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    .line 446
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 450
    :cond_93
    const-string/jumbo v8, ",=+<>#;\\\""

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f0

    .line 451
    new-instance v8, Ljava/io/IOException;

    .line 452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 453
    int-to-char v10, p2

    .line 452
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 453
    const-string/jumbo v10, "\'"

    .line 452
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 451
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 458
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_c0
    const/4 v8, 0x3

    if-ne p3, v8, :cond_f0

    .line 459
    const-string/jumbo v8, ",=+<>#;\\\""

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f0

    .line 460
    new-instance v8, Ljava/io/IOException;

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 462
    const-string/jumbo v10, "\' in AVA appears without escape"

    .line 461
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 476
    :cond_f0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_10d

    .line 478
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f7
    if-ge v4, v7, :cond_102

    .line 479
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 481
    :cond_102
    const/4 v7, 0x0

    .line 483
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 489
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_10d
    int-to-char v8, p2

    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v8

    and-int/2addr v5, v8

    .line 490
    .local v5, "isPrintableString":Z
    const/16 v8, 0x20

    if-ne p2, v8, :cond_122

    if-nez v1, :cond_122

    .line 493
    add-int/lit8 v7, v7, 0x1

    .line 502
    :goto_11b
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 503
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 496
    :cond_122
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_123
    if-ge v4, v7, :cond_12e

    .line 497
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_123

    .line 499
    :cond_12e
    const/4 v7, 0x0

    .line 500
    int-to-char v8, p2

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11b

    .line 512
    .end local v4    # "i":I
    .end local v5    # "isPrintableString":Z
    :cond_134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_144

    .line 513
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 514
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_144
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15c

    .line 521
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_168

    .line 522
    sget-boolean v8, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v8, :cond_168

    .line 524
    :cond_15c
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x16

    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v8

    .line 525
    :cond_168
    if-eqz v5, :cond_174

    .line 526
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 528
    :cond_174
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v8
.end method

.method private static readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .registers 4
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 576
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 577
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_d
    return v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1063
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    .local v13, "retval":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v16

    .line 1071
    .local v16, "valStr":Ljava/lang/String;
    if-nez v16, :cond_60

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    .line 1080
    .local v4, "data":[B
    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_34
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_1ae

    .line 1082
    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 1088
    .end local v4    # "data":[B
    .end local v8    # "i":I
    :cond_60
    const/4 v12, 0x0

    .line 1089
    .local v12, "quoteNeeded":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v14, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1091
    .local v11, "previousWhite":Z
    const-string/jumbo v6, ",+=\n<>#;\\\""

    .line 1098
    .local v6, "escapees":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    .line 1100
    .local v10, "length":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_b4

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b4

    .line 1101
    add-int/lit8 v18, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b2

    const/4 v2, 0x1

    .line 1103
    .local v2, "alreadyQuoted":Z
    :goto_99
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9a
    if-ge v8, v10, :cond_174

    .line 1104
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1105
    .local v3, "c":C
    if-eqz v2, :cond_b6

    if-eqz v8, :cond_ac

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_b6

    .line 1106
    :cond_ac
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    :cond_af
    :goto_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_9a

    .line 1101
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v8    # "i":I
    :cond_b2
    const/4 v2, 0x0

    .restart local v2    # "alreadyQuoted":Z
    goto :goto_99

    .line 1100
    .end local v2    # "alreadyQuoted":Z
    :cond_b4
    const/4 v2, 0x0

    .restart local v2    # "alreadyQuoted":Z
    goto :goto_99

    .line 1109
    .restart local v3    # "c":C
    .restart local v8    # "i":I
    :cond_b6
    invoke-static {v3}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_c7

    .line 1110
    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_119

    .line 1113
    :cond_c7
    if-nez v12, :cond_d8

    .line 1114
    if-nez v8, :cond_106

    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_d7

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v3, v0, :cond_106

    .line 1116
    :cond_d7
    :goto_d7
    const/4 v12, 0x1

    .line 1120
    :cond_d8
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_112

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v3, v0, :cond_112

    .line 1122
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v3, v0, :cond_f0

    const/16 v18, 0x5c

    move/from16 v0, v18

    if-ne v3, v0, :cond_f7

    .line 1123
    :cond_f0
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    :cond_f7
    const/4 v11, 0x0

    .line 1133
    :goto_f8
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_fb} :catch_fc

    goto :goto_af

    .line 1179
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    :catch_fc
    move-exception v5

    .line 1180
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1115
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "alreadyQuoted":Z
    .restart local v3    # "c":C
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_106
    :try_start_106
    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_d8

    goto :goto_d7

    .line 1127
    :cond_112
    if-nez v12, :cond_117

    if-eqz v11, :cond_117

    .line 1128
    const/4 v12, 0x1

    .line 1130
    :cond_117
    const/4 v11, 0x1

    goto :goto_f8

    .line 1135
    :cond_119
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_16e

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16e

    .line 1140
    const/4 v11, 0x0

    .line 1144
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 1145
    .local v17, "valueBytes":[B
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_133
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_af

    .line 1146
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    aget-byte v18, v17, v9

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 1147
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 1149
    .local v7, "hexChar":C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    aget-byte v18, v17, v9

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 1150
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 1152
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    add-int/lit8 v9, v9, 0x1

    goto :goto_133

    .line 1158
    .end local v7    # "hexChar":C
    .end local v9    # "j":I
    .end local v17    # "valueBytes":[B
    :cond_16e
    const/4 v11, 0x0

    .line 1159
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_af

    .line 1164
    .end local v3    # "c":C
    :cond_174
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_193

    .line 1165
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    .line 1166
    .local v15, "trailChar":C
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v15, v0, :cond_192

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v15, v0, :cond_193

    .line 1167
    :cond_192
    const/4 v12, 0x1

    .line 1173
    .end local v15    # "trailChar":C
    :cond_193
    if-nez v2, :cond_1b3

    if-eqz v12, :cond_1b3

    .line 1174
    const-string/jumbo v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_1ae} :catch_fc

    .line 1183
    .end local v2    # "alreadyQuoted":Z
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_1ae
    :goto_1ae
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 1176
    .restart local v2    # "alreadyQuoted":Z
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_1b3
    :try_start_1b3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bc} :catch_fc

    goto :goto_1ae
.end method

.method private static trailingSpace(Ljava/io/Reader;)Z
    .registers 6
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 584
    const/4 v2, 0x0

    .line 586
    .local v2, "trailing":Z
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v3

    if-nez v3, :cond_b

    .line 588
    const/4 v3, 0x1

    return v3

    .line 593
    :cond_b
    const/16 v3, 0x270f

    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 595
    :cond_10
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .line 596
    .local v1, "nextChar":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1c

    .line 597
    const/4 v2, 0x1

    .line 613
    :goto_18
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 614
    return v2

    .line 599
    :cond_1c
    if-eq v1, v4, :cond_10

    .line 601
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_2a

    .line 602
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 603
    .local v0, "followingChar":I
    if-eq v0, v4, :cond_10

    .line 604
    const/4 v2, 0x0

    .line 605
    goto :goto_18

    .line 608
    .end local v0    # "followingChar":I
    :cond_2a
    const/4 v2, 0x0

    .line 609
    goto :goto_18
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 676
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 678
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 679
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 680
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 681
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 682
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    .line 663
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 638
    if-ne p0, p1, :cond_4

    .line 639
    const/4 v1, 0x1

    return v1

    .line 641
    :cond_4
    instance-of v1, p1, Lsun/security/x509/AVA;

    if-nez v1, :cond_a

    .line 642
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 644
    check-cast v0, Lsun/security/x509/AVA;

    .line 645
    .local v0, "other":Lsun/security/x509/AVA;
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2c

    .line 249
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "AVA string is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_11

    .line 252
    .end local v1    # "s":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AVA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2c
    return-object v1
.end method

.method hasRFC2253Keyword()Z
    .registers 3

    .prologue
    .line 1054
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .registers 2

    .prologue
    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .registers 16

    .prologue
    .line 891
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 893
    .local v10, "typeAndValue":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {p0, v14, v13}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 892
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_57

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-gt v13, v14, :cond_57

    .line 910
    :cond_2a
    const/4 v3, 0x0

    .line 912
    .local v3, "data":[B
    :try_start_2b
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_b2

    move-result-object v3

    .line 916
    .local v3, "data":[B
    const/16 v13, 0x23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_37
    array-length v13, v3

    if-ge v7, v13, :cond_139

    .line 918
    aget-byte v0, v3, v7

    .line 919
    .local v0, "b":B
    ushr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    and-int/lit8 v13, v0, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 908
    .end local v0    # "b":B
    .end local v3    # "data":[B
    .end local v7    # "j":I
    :cond_57
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v13

    if-nez v13, :cond_68

    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    iget-byte v13, v13, Lsun/security/util/DerValue;->tag:B

    const/16 v14, 0x14

    if-ne v13, v14, :cond_2a

    .line 931
    :cond_68
    const/4 v11, 0x0

    .line 933
    .local v11, "valStr":Ljava/lang/String;
    :try_start_69
    new-instance v11, Ljava/lang/String;

    .end local v11    # "valStr":Ljava/lang/String;
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_bc

    .line 956
    .local v11, "valStr":Ljava/lang/String;
    const-string/jumbo v4, ",+<>;\"\\"

    .line 957
    .local v4, "escapees":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v9, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 960
    .local v8, "previousWhite":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_81
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_12e

    .line 961
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 963
    .local v1, "c":C
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v13

    if-nez v13, :cond_9a

    .line 964
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_c6

    .line 968
    :cond_9a
    if-nez v5, :cond_10e

    const/16 v13, 0x23

    if-ne v1, v13, :cond_10e

    .line 969
    :goto_a0
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    :cond_a5
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_118

    .line 974
    const/4 v8, 0x0

    .line 975
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_af
    :goto_af
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 913
    .end local v1    # "c":C
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    .local v3, "data":[B
    :catch_b2
    move-exception v6

    .line 914
    .local v6, "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 934
    .end local v3    # "data":[B
    .end local v6    # "ie":Ljava/io/IOException;
    :catch_bc
    move-exception v6

    .line 935
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 965
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v1    # "c":C
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v11    # "valStr":Ljava/lang/String;
    :cond_c6
    if-nez v5, :cond_cc

    const/16 v13, 0x23

    if-eq v1, v13, :cond_9a

    .line 987
    :cond_cc
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_129

    const-string/jumbo v13, "ava"

    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_129

    .line 992
    const/4 v8, 0x0

    .line 994
    const/4 v12, 0x0

    .line 996
    .local v12, "valueBytes":[B
    :try_start_db
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e5} :catch_11f

    move-result-object v12

    .line 1001
    .local v12, "valueBytes":[B
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_e7
    array-length v13, v12

    if-ge v7, v13, :cond_af

    .line 1002
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    aget-byte v13, v12, v7

    ushr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 1003
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1006
    aget-byte v13, v12, v7

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 1005
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    add-int/lit8 v7, v7, 0x1

    goto :goto_e7

    .line 968
    .end local v7    # "j":I
    .end local v12    # "valueBytes":[B
    :cond_10e
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_a5

    goto :goto_a0

    .line 977
    :cond_118
    if-nez v8, :cond_af

    .line 979
    const/4 v8, 0x1

    .line 980
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 997
    .local v12, "valueBytes":[B
    :catch_11f
    move-exception v6

    .line 998
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 999
    const-string/jumbo v14, "DER Value conversion"

    .line 998
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1012
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v12    # "valueBytes":[B
    :cond_129
    const/4 v8, 0x0

    .line 1013
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 1018
    .end local v1    # "c":C
    :cond_12e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    :cond_139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, "canon":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    sget-object v13, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v13}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public toRFC2253String()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 740
    .local v15, "typeAndValue":Ljava/lang/StringBuilder;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7c

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x39

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7c

    .line 755
    :cond_41
    const/4 v6, 0x0

    .line 757
    .local v6, "data":[B
    :try_start_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_e6

    move-result-object v6

    .line 761
    .local v6, "data":[B
    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_54
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_1d8

    .line 763
    aget-byte v3, v6, v11

    .line 764
    .local v3, "b":B
    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    and-int/lit8 v18, v3, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    add-int/lit8 v11, v11, 0x1

    goto :goto_54

    .line 753
    .end local v3    # "b":B
    .end local v6    # "data":[B
    .end local v11    # "j":I
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    .line 752
    if-nez v18, :cond_41

    .line 776
    const/16 v16, 0x0

    .line 778
    .local v16, "valStr":Ljava/lang/String;
    :try_start_8e
    new-instance v16, Ljava/lang/String;

    .end local v16    # "valStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a6} :catch_f0

    .line 806
    .local v16, "valStr":Ljava/lang/String;
    const-string/jumbo v7, ",=+<>#;\"\\"

    .line 807
    .local v7, "escapees":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v13, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_af
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_16a

    .line 810
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 811
    .local v4, "c":C
    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_ce

    .line 812
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_fa

    .line 815
    :cond_ce
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_e0

    .line 816
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_e0
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 809
    :cond_e3
    :goto_e3
    add-int/lit8 v9, v9, 0x1

    goto :goto_af

    .line 758
    .end local v4    # "c":C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    .local v6, "data":[B
    :catch_e6
    move-exception v10

    .line 759
    .local v10, "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 779
    .end local v6    # "data":[B
    .end local v10    # "ie":Ljava/io/IOException;
    :catch_f0
    move-exception v10

    .line 780
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 822
    .end local v10    # "ie":Ljava/io/IOException;
    .restart local v4    # "c":C
    .restart local v7    # "escapees":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_fa
    if-nez v4, :cond_105

    .line 824
    const-string/jumbo v18, "\\00"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 826
    :cond_105
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_165

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_165

    .line 830
    const/16 v17, 0x0

    .line 832
    .local v17, "valueBytes":[B
    :try_start_114
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11e} :catch_15b

    move-result-object v17

    .line 837
    .local v17, "valueBytes":[B
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_120
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_e3

    .line 838
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    aget-byte v18, v17, v11

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 839
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 841
    .local v8, "hexChar":C
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    aget-byte v18, v17, v11

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 842
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 844
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v11, v11, 0x1

    goto :goto_120

    .line 833
    .end local v8    # "hexChar":C
    .end local v11    # "j":I
    .local v17, "valueBytes":[B
    :catch_15b
    move-exception v10

    .line 834
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .line 835
    const-string/jumbo v19, "DER Value conversion"

    .line 834
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 849
    .end local v10    # "ie":Ljava/io/IOException;
    .end local v17    # "valueBytes":[B
    :cond_165
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_e3

    .line 853
    .end local v4    # "c":C
    :cond_16a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 854
    .local v5, "chars":[C
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "lead":I
    :goto_178
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_193

    .line 859
    aget-char v18, v5, v12

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c9

    aget-char v18, v5, v12

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c9

    .line 864
    :cond_193
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v14, v18, -0x1

    .local v14, "trail":I
    :goto_198
    if-ltz v14, :cond_1ae

    .line 865
    aget-char v18, v5, v14

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1cc

    aget-char v18, v5, v14

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1cc

    .line 871
    :cond_1ae
    const/4 v9, 0x0

    :goto_1af
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_1cf

    .line 872
    aget-char v4, v5, v9

    .line 873
    .restart local v4    # "c":C
    if-lt v9, v12, :cond_1bc

    if-le v9, v14, :cond_1c3

    .line 874
    :cond_1bc
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    :cond_1c3
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    add-int/lit8 v9, v9, 0x1

    goto :goto_1af

    .line 858
    .end local v4    # "c":C
    .end local v14    # "trail":I
    :cond_1c9
    add-int/lit8 v12, v12, 0x1

    goto :goto_178

    .line 864
    .restart local v14    # "trail":I
    :cond_1cc
    add-int/lit8 v14, v14, -0x1

    goto :goto_198

    .line 878
    :cond_1cf
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .end local v5    # "chars":[C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "lead":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v14    # "trail":I
    .end local v16    # "valStr":Ljava/lang/String;
    :cond_1d8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
