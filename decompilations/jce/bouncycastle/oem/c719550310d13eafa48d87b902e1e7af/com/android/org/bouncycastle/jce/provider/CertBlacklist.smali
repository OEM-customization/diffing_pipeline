.class public Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
.super Ljava/lang/Object;
.source "CertBlacklist.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field public final serialBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v4, "ANDROID_DATA"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "androidData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/misc/keychain/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "blacklistRoot":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pubkey_blacklist.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "defaultPubkeyBlacklistPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "serial_blacklist.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "defaultSerialBlacklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 50
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pubkeyBlacklistPath"    # Ljava/lang/String;
    .param p2, "serialBlacklistPath"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 56
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 57
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 113
    if-eqz p0, :cond_5

    .line 115
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 121
    :cond_5
    :goto_5
    return-void

    .line 118
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_5

    .line 116
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 117
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static isHex(Ljava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    .line 62
    const/4 v1, 0x1

    return v1

    .line 63
    :catch_9
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not parse hex value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method private static isPubkeyHash(Ljava/lang/String;)Z
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_29

    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pubkey hash length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_29
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isHex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 81
    :catch_5
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "Could not read blacklist"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    const-string/jumbo v2, ""

    return-object v2

    .line 80
    :catch_14
    move-exception v1

    .local v1, "ignored":Ljava/io/FileNotFoundException;
    goto :goto_10
.end method

.method private static readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 96
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 97
    .local v4, "f":Ljava/io/RandomAccessFile;
    :try_start_9
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 100
    .local v0, "buffer":[B
    :goto_17
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_27

    move-result v1

    .line 101
    .local v1, "byteCount":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_22

    .line 107
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    return-object v2

    .line 104
    :cond_22
    const/4 v5, 0x0

    :try_start_23
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_17

    .line 106
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catchall_27
    move-exception v5

    move-object v3, v4

    .line 107
    .end local v4    # "f":Ljava/io/RandomAccessFile;
    :goto_29
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    throw v5

    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catchall_2d
    move-exception v5

    goto :goto_29
.end method

.method private static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v0, Ljava/util/HashSet;

    const/16 v4, 0x9

    new-array v4, v4, [[B

    .line 171
    const-string/jumbo v5, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 174
    const-string/jumbo v5, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 177
    const-string/jumbo v5, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 180
    const-string/jumbo v5, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 183
    const-string/jumbo v5, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 187
    const-string/jumbo v5, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 190
    const-string/jumbo v5, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 193
    const-string/jumbo v5, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 196
    const-string/jumbo v5, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 168
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 200
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "pubkeyBlacklist":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 202
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_7d
    if-ge v3, v5, :cond_b1

    aget-object v2, v4, v3

    .line 203
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 207
    :cond_95
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tried to blacklist invalid pubkey "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_92

    .line 212
    .end local v2    # "value":Ljava/lang/String;
    :cond_b1
    return-object v0
.end method

.method private static final readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x10

    .line 134
    new-instance v0, Ljava/util/HashSet;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/math/BigInteger;

    .line 137
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "077a59bcd53459601ca6907267a6dd1c"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v5, v4

    .line 138
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 139
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 140
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 141
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 142
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 143
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 144
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 145
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 146
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x9

    aput-object v6, v5, v7

    .line 134
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "serialBlacklist":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 152
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_94
    if-ge v4, v6, :cond_c2

    aget-object v3, v5, v4

    .line 154
    .local v3, "value":Ljava/lang/String;
    :try_start_98
    new-instance v7, Ljava/math/BigInteger;

    const/16 v8, 0x10

    invoke-direct {v7, v3, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_a2} :catch_a5

    .line 152
    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 155
    :catch_a5
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tried to blacklist invalid serial number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a2

    .line 162
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":Ljava/lang/String;
    :cond_c2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .registers 9
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 217
    .local v3, "encoded":[B
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v2

    .line 218
    .local v2, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    array-length v5, v3

    invoke-interface {v2, v3, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 219
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v4, v5, [B

    .line 220
    .local v4, "out":[B
    invoke-interface {v2, v4, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 221
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "blacklisted$iterator":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 222
    .local v0, "blacklisted":[B
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 223
    const/4 v5, 0x1

    return v5

    .line 226
    .end local v0    # "blacklisted":[B
    :cond_34
    return v6
.end method

.method public isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
