.class public Lsun/security/x509/CRLExtensions;
.super Ljava/lang/Object;
.source "CRLExtensions.java"


# static fields
.field private static final PARAMS:[Ljava/lang/Class;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedCritExt:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 83
    invoke-direct {p0, p1}, Lsun/security/x509/CRLExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 84
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .registers 12
    .param p1, "derStrm"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v5, p1

    .line 91
    .local v5, "str":Lsun/security/util/DerInputStream;
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v7

    int-to-byte v4, v7

    .line 93
    .local v4, "nextByte":B
    and-int/lit16 v7, v4, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_16

    .line 94
    and-int/lit8 v7, v4, 0x1f

    if-nez v7, :cond_16

    .line 95
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    .line 96
    .local v6, "val":Lsun/security/util/DerValue;
    iget-object v5, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 99
    .end local v6    # "val":Lsun/security/util/DerValue;
    :cond_16
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 100
    .local v2, "exts":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v7, v2

    if-ge v3, v7, :cond_4b

    .line 101
    new-instance v1, Lsun/security/x509/Extension;

    aget-object v7, v2, v3

    invoke-direct {v1, v7}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 102
    .local v1, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v1}, Lsun/security/x509/CRLExtensions;->parseExtension(Lsun/security/x509/Extension;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_2c

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 104
    .end local v1    # "ext":Lsun/security/x509/Extension;
    .end local v2    # "exts":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    .end local v4    # "nextByte":B
    :catch_2c
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CRLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Parsing error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "exts":[Lsun/security/util/DerValue;
    .restart local v3    # "i":I
    .restart local v4    # "nextByte":B
    :cond_4b
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .registers 10
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v3

    .line 115
    .local v3, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_3c

    .line 116
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 117
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 118
    :cond_13
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 119
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_74

    .line 129
    .end local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2c
    move-exception v4

    .line 130
    .local v4, "invk":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    .end local v4    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3b
    return-void

    .line 122
    :cond_3c
    :try_start_3c
    sget-object v6, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 123
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 124
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 125
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertAttrSet;

    .line 126
    .local v1, "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v1}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v1, Lsun/security/x509/Extension;

    .end local v1    # "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 127
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_74} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_74} :catch_74

    .line 131
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_74
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "passed":[Ljava/lang/Object;
    :cond_7f
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .registers 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 148
    .local v3, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 149
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 151
    .local v5, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    array-length v8, v5

    if-ge v4, v8, :cond_78

    .line 152
    aget-object v8, v5, v4

    instance-of v8, v8, Lsun/security/x509/CertAttrSet;

    if-eqz v8, :cond_23

    .line 153
    aget-object v8, v5, v4

    check-cast v8, Lsun/security/x509/CertAttrSet;

    invoke-interface {v8, v3}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    .line 151
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 154
    :cond_23
    aget-object v8, v5, v4

    instance-of v8, v8, Lsun/security/x509/Extension;

    if-eqz v8, :cond_50

    .line 155
    aget-object v8, v5, v4

    check-cast v8, Lsun/security/x509/Extension;

    invoke-virtual {v8, v3}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_30} :catch_59

    goto :goto_20

    .line 171
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_31
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/security/cert/CRLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encoding error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_50
    :try_start_50
    new-instance v8, Ljava/security/cert/CRLException;

    const-string/jumbo v9, "Illegal extension object"

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_50 .. :try_end_59} :catch_59

    .line 173
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_59
    move-exception v2

    .line 174
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/security/cert/CRLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encoding error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_78
    :try_start_78
    new-instance v6, Lsun/security/util/DerOutputStream;

    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 161
    .local v6, "seq":Lsun/security/util/DerOutputStream;
    const/16 v8, 0x30

    invoke-virtual {v6, v8, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 163
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 164
    .local v7, "tmp":Lsun/security/util/DerOutputStream;
    if-eqz p2, :cond_9c

    .line 165
    const/16 v8, -0x80

    .line 166
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 165
    invoke-static {v8, v9, v10}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v8

    invoke-virtual {v7, v8, v6}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 170
    :goto_94
    invoke-virtual {v7}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_9b} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_78 .. :try_end_9b} :catch_59

    .line 176
    return-void

    .line 168
    :cond_9c
    move-object v7, v6

    goto :goto_94
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    if-ne p0, p1, :cond_5

    .line 251
    return v9

    .line 252
    :cond_5
    instance-of v7, p1, Lsun/security/x509/CRLExtensions;

    if-nez v7, :cond_a

    .line 253
    return v8

    .line 255
    :cond_a
    check-cast p1, Lsun/security/x509/CRLExtensions;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v4

    .line 256
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 258
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    .line 259
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v2, v7, :cond_1e

    .line 260
    return v8

    .line 263
    :cond_1e
    const/4 v1, 0x0

    .line 264
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "key":Ljava/lang/String;
    .local v0, "i":I
    :goto_20
    if-ge v0, v2, :cond_53

    .line 265
    aget-object v7, v3, v0

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_30

    .line 266
    aget-object v7, v3, v0

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_30
    aget-object v5, v3, v0

    check-cast v5, Lsun/security/x509/Extension;

    .line 268
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_3e

    .line 269
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_3e
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 271
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_49

    .line 272
    return v8

    .line 273
    :cond_49
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 274
    return v8

    .line 264
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 276
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_53
    return v9
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v4, "x509"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 188
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .end local v2    # "index":I
    .local v3, "name":Ljava/lang/String;
    :goto_1f
    iget-object v4, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    return-object v4

    .line 191
    .end local v3    # "name":Ljava/lang/String;
    :cond_28
    move-object v3, p1

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1f
.end method

.method public getAllExtensions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 203
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    check-cast p2, Lsun/security/x509/Extension;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
