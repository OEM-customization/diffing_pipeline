.class Lsun/nio/fs/UnixUriUtils;
.super Ljava/lang/Object;
.source "UnixUriUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DIGIT:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final L_ALPHA:J

.field private static final L_ALPHANUM:J

.field private static final L_DIGIT:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const-class v0, Lsun/nio/fs/UnixUriUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    .line 202
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    .line 209
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    .line 215
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    .line 219
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    .line 222
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    .line 223
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    .line 227
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    .line 228
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    .line 231
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    .line 232
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    .line 237
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 236
    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    .line 239
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 238
    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    .line 242
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    .line 243
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    .line 245
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_96

    sput-object v0, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    .line 38
    return-void

    .line 245
    nop

    :array_96
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 191
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 192
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 193
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 194
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 195
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 196
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 197
    :cond_25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 16
    .param p0, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_f

    .line 46
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI is not absolute"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 47
    :cond_f
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 48
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI is not hierarchical"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 49
    :cond_1e
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_2f

    const-string/jumbo v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_38

    .line 51
    :cond_2f
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI scheme is not \"file\""

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 52
    :cond_38
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_47

    .line 53
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has an authority component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 54
    :cond_47
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_56

    .line 55
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has a fragment component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 56
    :cond_56
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_65

    .line 57
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI has a query component"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 60
    :cond_65
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "file:///"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7c

    .line 61
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    return-object v12

    .line 64
    :cond_7c
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "p":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 66
    .local v4, "len":I
    if-nez v4, :cond_8f

    .line 67
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "URI path component is empty"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 70
    :cond_8f
    const-string/jumbo v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d

    const/4 v12, 0x1

    if-le v4, v12, :cond_9d

    .line 71
    add-int/lit8 v4, v4, -0x1

    .line 72
    :cond_9d
    new-array v8, v4, [B

    .line 73
    .local v8, "result":[B
    const/4 v9, 0x0

    .line 74
    .local v9, "rlen":I
    const/4 v6, 0x0

    .local v6, "pos":I
    move v7, v6

    .end local v6    # "pos":I
    .local v7, "pos":I
    move v10, v9

    .line 75
    .end local v9    # "rlen":I
    .local v10, "rlen":I
    :goto_a3
    if-ge v7, v4, :cond_f6

    .line 76
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 78
    .local v1, "c":C
    const/16 v12, 0x25

    if-ne v1, v12, :cond_e0

    .line 79
    sget-boolean v12, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v12, :cond_bd

    add-int/lit8 v12, v6, 0x2

    if-le v12, v4, :cond_bd

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 80
    :cond_bd
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 81
    .local v2, "c1":C
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 82
    .local v3, "c2":C
    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    invoke-static {v3}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v13

    or-int/2addr v12, v13

    int-to-byte v0, v12

    .line 83
    .local v0, "b":B
    if-nez v0, :cond_ef

    .line 84
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Nul character not allowed"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 86
    .end local v0    # "b":B
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :cond_e0
    sget-boolean v12, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v12, :cond_ee

    const/16 v12, 0x80

    if-lt v1, v12, :cond_ee

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 87
    :cond_ee
    int-to-byte v0, v1

    .line 89
    .restart local v0    # "b":B
    :cond_ef
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rlen":I
    .restart local v9    # "rlen":I
    aput-byte v0, v8, v10

    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    move v10, v9

    .end local v9    # "rlen":I
    .restart local v10    # "rlen":I
    goto :goto_a3

    .line 91
    .end local v0    # "b":B
    .end local v1    # "c":C
    :cond_f6
    array-length v12, v8

    if-eq v10, v12, :cond_fd

    .line 92
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 94
    :cond_fd
    new-instance v12, Lsun/nio/fs/UnixPath;

    invoke-direct {v12, p0, v8}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v12
.end method

.method private static highMask(CC)J
    .registers 10
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x40

    .line 172
    const-wide/16 v4, 0x0

    .line 173
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    .line 174
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    .line 175
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_1b
    if-gt v1, v2, :cond_24

    .line 176
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 177
    :cond_24
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 149
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 150
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v4, :cond_1e

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    .local v0, "c":C
    const/16 v5, 0x40

    if-lt v0, v5, :cond_1b

    const/16 v5, 0x80

    if-ge v0, v5, :cond_1b

    .line 153
    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 150
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 155
    .end local v0    # "c":C
    :cond_1e
    return-wide v2
.end method

.method private static lowMask(CC)J
    .registers 10
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 164
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_16
    if-gt v1, v2, :cond_1f

    .line 165
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 166
    :cond_1f
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 137
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 138
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v4, :cond_18

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, "c":C
    const/16 v5, 0x40

    if-ge v0, v5, :cond_15

    .line 141
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 138
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 143
    .end local v0    # "c":C
    :cond_18
    return-wide v2
.end method

.method private static match(CJJ)Z
    .registers 14
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    const/16 v2, 0x40

    if-ge p0, v2, :cond_14

    .line 183
    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 184
    :cond_14
    const/16 v2, 0x80

    if-ge p0, v2, :cond_24

    .line 185
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21

    .line 186
    :cond_24
    return v1
.end method

.method static toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;
    .registers 12
    .param p0, "up"    # Lsun/nio/fs/UnixPath;

    .prologue
    const/16 v10, 0x2f

    .line 101
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v2

    .line 102
    .local v2, "path":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file:///"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-boolean v6, Lsun/nio/fs/UnixUriUtils;->-assertionsDisabled:Z

    if-nez v6, :cond_21

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eq v6, v10, :cond_21

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 104
    :cond_21
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    array-length v6, v2

    if-ge v1, v6, :cond_54

    .line 105
    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    int-to-char v0, v6

    .line 106
    .local v0, "c":C
    sget-wide v6, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    sget-wide v8, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    invoke-static {v0, v6, v7, v8, v9}, Lsun/nio/fs/UnixUriUtils;->match(CJJ)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 109
    :cond_3a
    const/16 v6, 0x25

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    sget-object v6, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    sget-object v6, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 116
    .end local v0    # "c":C
    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_70

    .line 118
    const/4 v6, 0x1

    :try_start_61
    invoke-static {p0, v6}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 119
    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Lsun/nio/fs/UnixException; {:try_start_61 .. :try_end_70} :catch_81

    .line 126
    :cond_70
    :goto_70
    :try_start_70
    new-instance v6, Ljava/net/URI;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/net/URISyntaxException; {:try_start_70 .. :try_end_79} :catch_7a

    return-object v6

    .line 127
    :catch_7a
    move-exception v4

    .line 128
    .local v4, "x":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 120
    .end local v4    # "x":Ljava/net/URISyntaxException;
    :catch_81
    move-exception v5

    .local v5, "x":Lsun/nio/fs/UnixException;
    goto :goto_70
.end method
