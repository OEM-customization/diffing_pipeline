.class public final Lcom/android/org/conscrypt/CertBlacklistImpl;
.super Ljava/lang/Object;
.source "CertBlacklistImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/CertBlacklist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;
    }
.end annotation


# static fields
.field private static final blacklist HEX_TABLE:[B

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist serialBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/org/conscrypt/CertBlacklistImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    .line 248
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/conscrypt/CertBlacklistImpl;->HEX_TABLE:[B

    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "serialBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    .local p2, "pubkeyBlacklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/org/conscrypt/CertBlacklistImpl;->serialBlacklist:Ljava/util/Set;

    .line 55
    iput-object p2, p0, Lcom/android/org/conscrypt/CertBlacklistImpl;->pubkeyBlacklist:Ljava/util/Set;

    .line 56
    return-void
.end method

.method private static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 123
    if-eqz p0, :cond_a

    .line 125
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 129
    goto :goto_a

    .line 128
    :catch_6
    move-exception v0

    goto :goto_a

    .line 126
    :catch_8
    move-exception v0

    .line 127
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 131
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist getDefault()Lcom/android/org/conscrypt/CertBlacklist;
    .registers 7

    .line 59
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "androidData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/misc/keychain/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "blacklistRoot":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pubkey_blacklist.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "defaultPubkeyBlacklistPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "serial_blacklist.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "defaultSerialBlacklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 65
    .local v4, "pubkeyBlacklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;>;"
    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 66
    .local v5, "serialBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    new-instance v6, Lcom/android/org/conscrypt/CertBlacklistImpl;

    invoke-direct {v6, v5, v4}, Lcom/android/org/conscrypt/CertBlacklistImpl;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v6
.end method

.method private static blacklist isHex(Ljava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    .line 72
    const/4 v0, 0x1

    return v0

    .line 73
    :catch_9
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse hex value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isPubkeyHash(Ljava/lang/String;)Z
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_26

    .line 81
    sget-object v0, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pubkey hash length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_26
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->isHex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 91
    :catch_5
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not read blacklist"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    .line 93
    nop

    .line 94
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 108
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 110
    .local v2, "buffer":[B
    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_28

    .line 111
    .local v3, "byteCount":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_23

    .line 112
    nop

    .line 117
    invoke-static {v0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    return-object v1

    .line 114
    :cond_23
    const/4 v4, 0x0

    :try_start_24
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 115
    .end local v3    # "byteCount":I
    goto :goto_17

    .line 117
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :catchall_28
    move-exception v1

    invoke-static {v0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    throw v1
.end method

.method private static blacklist readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 181
    const-string v3, "bae78e6bed65a2bf60ddedde7fd91e825865e93d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 185
    const-string v4, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 188
    const-string v4, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 191
    const-string v4, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 194
    const-string v4, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 197
    const-string v4, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    const-string v4, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 205
    const-string v4, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 208
    const-string v4, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 211
    const-string v4, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 177
    invoke-static {v1}, Lcom/android/org/conscrypt/CertBlacklistImpl;->toByteStrings([[B)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;>;"
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "pubkeyBlacklist":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 216
    const/4 v2, -0x1

    const-string v4, ","

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_91
    if-ge v3, v4, :cond_c9

    aget-object v5, v2, v3

    .line 217
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v5}, Lcom/android/org/conscrypt/CertBlacklistImpl;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 219
    new-instance v6, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;-><init>([B)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 221
    :cond_ae
    sget-object v6, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tried to blacklist invalid pubkey "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 216
    .end local v5    # "value":Ljava/lang/String;
    :goto_c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 226
    :cond_c9
    return-object v0
.end method

.method private static blacklist readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "077a59bcd53459601ca6907267a6dd1c"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x9

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 160
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklistImpl;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "serialBlacklist":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 162
    const/4 v2, -0x1

    const-string v5, ","

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_89
    if-ge v3, v5, :cond_b2

    aget-object v6, v2, v3

    .line 164
    .local v6, "value":Ljava/lang/String;
    :try_start_8d
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_95} :catch_96

    .line 167
    goto :goto_af

    .line 165
    :catch_96
    move-exception v7

    .line 166
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tried to blacklist invalid serial number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 172
    :cond_b2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static varargs blacklist toByteStrings([[B)Ljava/util/List;
    .registers 6
    .param p0, "allBytes"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v0, "byteStrings":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 271
    .local v3, "bytes":[B
    new-instance v4, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;

    invoke-direct {v4, v3}, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v3    # "bytes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 273
    :cond_19
    return-object v0
.end method

.method private static blacklist toHex([B)[B
    .registers 8
    .param p0, "in"    # [B

    .line 253
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 254
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 255
    .local v1, "outIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_23

    .line 256
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 257
    .local v3, "value":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outIndex":I
    .local v4, "outIndex":I
    sget-object v5, Lcom/android/org/conscrypt/CertBlacklistImpl;->HEX_TABLE:[B

    shr-int/lit8 v6, v3, 0x4

    aget-byte v6, v5, v6

    aput-byte v6, v0, v1

    .line 258
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "outIndex":I
    .restart local v1    # "outIndex":I
    and-int/lit8 v6, v3, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 255
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 260
    .end local v2    # "i":I
    :cond_23
    return-object v0
.end method


# virtual methods
.method public blacklist isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .registers 9
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .line 231
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 234
    .local v0, "encoded":[B
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_b} :catch_32

    .line 238
    .local v2, "md":Ljava/security/MessageDigest;
    nop

    .line 239
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlacklistImpl;->toHex([B)[B

    move-result-object v3

    .line 240
    .local v3, "out":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/CertBlacklistImpl;->pubkeyBlacklist:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;

    .line 241
    .local v5, "blacklisted":Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;
    iget-object v6, v5, Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;->bytes:[B

    invoke-static {v6, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 242
    const/4 v1, 0x1

    return v1

    .line 244
    .end local v5    # "blacklisted":Lcom/android/org/conscrypt/CertBlacklistImpl$ByteString;
    :cond_30
    goto :goto_1a

    .line 245
    :cond_31
    return v1

    .line 235
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "out":[B
    :catch_32
    move-exception v2

    .line 236
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v3, Lcom/android/org/conscrypt/CertBlacklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Unable to get SHA1 MessageDigest"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    return v1
.end method

.method public blacklist isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .line 265
    iget-object v0, p0, Lcom/android/org/conscrypt/CertBlacklistImpl;->serialBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
