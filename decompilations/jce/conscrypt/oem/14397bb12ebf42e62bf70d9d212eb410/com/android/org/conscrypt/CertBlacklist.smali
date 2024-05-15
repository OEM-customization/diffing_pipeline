.class public final Lcom/android/org/conscrypt/CertBlacklist;
.super Ljava/lang/Object;
.source "CertBlacklist.java"


# static fields
.field private static final HEX_TABLE:[B

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field private final serialBlacklist:Ljava/util/Set;
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
    .line 42
    const-class v0, Lcom/android/org/conscrypt/CertBlacklist;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@50
    nop

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

    .line 244
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/conscrypt/CertBlacklist;->HEX_TABLE:[B

    .line 41
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 244
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

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/Set",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "serialBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    .local p2, "pubkeyBlacklist":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/org/conscrypt/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 52
    iput-object p2, p0, Lcom/android/org/conscrypt/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 120
    if-eqz p0, :cond_5

    .line 122
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 128
    :cond_5
    :goto_5
    return-void

    .line 125
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_5

    .line 123
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 124
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static getDefault()Lcom/android/org/conscrypt/CertBlacklist;
    .registers 8

    .prologue
    .line 56
    const-string/jumbo v6, "ANDROID_DATA"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "androidData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/misc/keychain/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "blacklistRoot":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "pubkey_blacklist.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "defaultPubkeyBlacklistPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "serial_blacklist.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "defaultSerialBlacklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/conscrypt/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 62
    .local v4, "pubkeyBlacklist":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 63
    .local v5, "serialBlacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    new-instance v6, Lcom/android/org/conscrypt/CertBlacklist;

    invoke-direct {v6, v5, v4}, Lcom/android/org/conscrypt/CertBlacklist;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v6
.end method

.method private static isHex(Ljava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    .line 69
    const/4 v1, 0x1

    return v1

    .line 70
    :catch_9
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

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

    .line 72
    const/4 v1, 0x0

    return v1
.end method

.method private static isPubkeyHash(Ljava/lang/String;)Z
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_29

    .line 78
    sget-object v0, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

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

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_29
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklist;->isHex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklist;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

    .line 88
    :catch_5
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "Could not read blacklist"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    const-string/jumbo v2, ""

    return-object v2

    .line 87
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
    .line 101
    const/4 v3, 0x0

    .line 103
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 104
    .local v4, "f":Ljava/io/RandomAccessFile;
    :try_start_9
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v3    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 105
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 107
    .local v0, "buffer":[B
    :goto_17
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_27

    move-result v1

    .line 108
    .local v1, "byteCount":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_22

    .line 114
    invoke-static {v4}, Lcom/android/org/conscrypt/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    return-object v2

    .line 111
    :cond_22
    const/4 v5, 0x0

    :try_start_23
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_17

    .line 113
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catchall_27
    move-exception v5

    move-object v3, v4

    .line 114
    .end local v4    # "f":Ljava/io/RandomAccessFile;
    :goto_29
    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
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
    .line 96
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklist;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
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

    .line 175
    new-instance v0, Ljava/util/HashSet;

    const/16 v4, 0xa

    new-array v4, v4, [[B

    .line 179
    const-string/jumbo v5, "bae78e6bed65a2bf60ddedde7fd91e825865e93d"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 182
    const-string/jumbo v5, "410f36363258f30b347d12ce4863e433437806a8"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 185
    const-string/jumbo v5, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 188
    const-string/jumbo v5, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 191
    const-string/jumbo v5, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 194
    const-string/jumbo v5, "e8f91200c65cee16e039b9f883841661635f81c5"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 198
    const-string/jumbo v5, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 201
    const-string/jumbo v5, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 204
    const-string/jumbo v5, "783333c9687df63377efceddd82efa9101913e8e"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 207
    const-string/jumbo v5, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 175
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "pubkeyBlacklist":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    .line 213
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_9c
    if-ge v3, v5, :cond_d2

    aget-object v2, v4, v3

    .line 214
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2}, Lcom/android/org/conscrypt/CertBlacklist;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 216
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 218
    :cond_b6
    sget-object v6, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

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

    goto :goto_b3

    .line 223
    .end local v2    # "value":Ljava/lang/String;
    :cond_d2
    return-object v0
.end method

.method private static readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
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

    .line 141
    new-instance v0, Ljava/util/HashSet;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/math/BigInteger;

    .line 144
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "077a59bcd53459601ca6907267a6dd1c"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v5, v4

    .line 145
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 146
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 147
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 148
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 149
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 150
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 151
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 152
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 153
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x9

    aput-object v6, v5, v7

    .line 141
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "serialBlacklist":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 159
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_94
    if-ge v4, v6, :cond_c2

    aget-object v3, v5, v4

    .line 161
    .local v3, "value":Ljava/lang/String;
    :try_start_98
    new-instance v7, Ljava/math/BigInteger;

    const/16 v8, 0x10

    invoke-direct {v7, v3, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_a2} :catch_a5

    .line 159
    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 162
    :catch_a5
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

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

    .line 169
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":Ljava/lang/String;
    :cond_c2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method private static toHex([B)[B
    .registers 8
    .param p0, "in"    # [B

    .prologue
    .line 249
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 250
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 251
    .local v2, "outIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v5, p0

    if-ge v0, v5, :cond_25

    .line 252
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 253
    .local v4, "value":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "outIndex":I
    .local v3, "outIndex":I
    sget-object v5, Lcom/android/org/conscrypt/CertBlacklist;->HEX_TABLE:[B

    shr-int/lit8 v6, v4, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, v1, v2

    .line 254
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "outIndex":I
    .restart local v2    # "outIndex":I
    sget-object v5, Lcom/android/org/conscrypt/CertBlacklist;->HEX_TABLE:[B

    and-int/lit8 v6, v4, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v1, v3

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 256
    .end local v4    # "value":I
    :cond_25
    return-object v1
.end method


# virtual methods
.method public isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .registers 12
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v9, 0x0

    .line 227
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 230
    .local v3, "encoded":[B
    :try_start_5
    const-string/jumbo v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_b} :catch_2e

    move-result-object v4

    .line 235
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/conscrypt/CertBlacklist;->toHex([B)[B

    move-result-object v5

    .line 236
    .local v5, "out":[B
    iget-object v6, p0, Lcom/android/org/conscrypt/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "blacklisted$iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 237
    .local v0, "blacklisted":[B
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 238
    const/4 v6, 0x1

    return v6

    .line 231
    .end local v0    # "blacklisted":[B
    .end local v1    # "blacklisted$iterator":Ljava/util/Iterator;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "out":[B
    :catch_2e
    move-exception v2

    .line 232
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v6, Lcom/android/org/conscrypt/CertBlacklist;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to get SHA1 MessageDigest"

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    return v9

    .line 241
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "blacklisted$iterator":Ljava/util/Iterator;
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "out":[B
    :cond_3a
    return v9
.end method

.method public isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/org/conscrypt/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
