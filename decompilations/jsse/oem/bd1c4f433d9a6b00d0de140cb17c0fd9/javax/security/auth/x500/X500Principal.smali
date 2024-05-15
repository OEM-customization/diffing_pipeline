.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient thisX500Name:Lsun/security/x509/X500Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-nez p1, :cond_e

    .line 255
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "provided null input stream"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 261
    :cond_1d
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 262
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v4, Lsun/security/x509/X500Name;

    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2c

    .line 280
    return-void

    .line 263
    .end local v0    # "der":Lsun/security/util/DerValue;
    :catch_2c
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 266
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_42

    .line 275
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 276
    const-string/jumbo v4, "improperly specified input stream"

    .line 275
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 278
    throw v2

    .line 267
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_42
    move-exception v3

    .line 268
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 269
    const-string/jumbo v4, "improperly specified input stream and unable to reset input stream"

    .line 268
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 272
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-nez p1, :cond_12

    .line 170
    new-instance v2, Ljava/lang/NullPointerException;

    .line 172
    const-string/jumbo v3, "provided.null.name"

    .line 171
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_12
    if-nez p2, :cond_21

    .line 175
    new-instance v2, Ljava/lang/NullPointerException;

    .line 177
    const-string/jumbo v3, "provided.null.keyword.map"

    .line 176
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_21
    :try_start_21
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, p1, p2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_29

    .line 188
    return-void

    .line 182
    :catch_29
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "improperly specified input name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 186
    throw v1
.end method

.method constructor <init>(Lsun/security/x509/X500Name;)V
    .registers 2
    .param p1, "x500Name"    # Lsun/security/x509/X500Name;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 97
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "name"    # [B

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    :try_start_3
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 233
    return-void

    .line 227
    :catch_b
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 229
    const-string/jumbo v2, "improperly specified input name"

    .line 228
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 231
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 512
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 500
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 468
    if-ne p0, p1, :cond_4

    .line 469
    const/4 v1, 0x1

    return v1

    .line 471
    :cond_4
    instance-of v1, p1, Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_a

    .line 472
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 474
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    .line 475
    .local v0, "other":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    iget-object v2, v0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getEncoded()[B
    .registers 4

    .prologue
    .line 433
    :try_start_0
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->getEncoded()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 434
    :catch_7
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p0, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 358
    if-eqz p1, :cond_32

    .line 359
    const-string/jumbo v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 360
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC1779Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_12
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 362
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_22
    const-string/jumbo v0, "CANONICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 364
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_f

    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    .line 408
    const-string/jumbo v1, "provided.null.OID.map"

    .line 407
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_f
    if-eqz p1, :cond_31

    .line 411
    const-string/jumbo v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 412
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_21
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 414
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
