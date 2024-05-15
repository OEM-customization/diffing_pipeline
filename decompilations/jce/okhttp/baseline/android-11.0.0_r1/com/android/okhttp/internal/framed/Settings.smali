.class public final Lcom/android/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final blacklist CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final blacklist COUNT:I = 0xa

.field static final blacklist CURRENT_CWND:I = 0x5

.field static final blacklist DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final blacklist DOWNLOAD_BANDWIDTH:I = 0x2

.field static final blacklist DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final blacklist ENABLE_PUSH:I = 0x2

.field static final blacklist FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final blacklist FLOW_CONTROL_OPTIONS:I = 0xa

.field static final blacklist FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final blacklist HEADER_TABLE_SIZE:I = 0x1

.field static final blacklist INITIAL_WINDOW_SIZE:I = 0x7

.field static final blacklist MAX_CONCURRENT_STREAMS:I = 0x4

.field static final blacklist MAX_FRAME_SIZE:I = 0x5

.field static final blacklist MAX_HEADER_LIST_SIZE:I = 0x6

.field static final blacklist PERSISTED:I = 0x2

.field static final blacklist PERSIST_VALUE:I = 0x1

.field static final blacklist ROUND_TRIP_TIME:I = 0x3

.field static final blacklist UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private blacklist persistValue:I

.field private blacklist persisted:I

.field private blacklist set:I

.field private final blacklist values:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method blacklist clear()V
    .registers 3

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    .line 88
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 89
    return-void
.end method

.method blacklist flags(I)I
    .registers 4
    .param p1, "id"    # I

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/Settings;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x2

    .line 128
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/Settings;->persistValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x1

    .line 129
    :cond_11
    return v0
.end method

.method blacklist get(I)I
    .registers 3
    .param p1, "id"    # I

    .line 121
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method blacklist getClientCertificateVectorSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 205
    const/16 v0, 0x100

    .line 206
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    goto :goto_f

    :cond_e
    move v1, p1

    :goto_f
    return v1
.end method

.method blacklist getCurrentCwnd(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 176
    const/16 v0, 0x20

    .line 177
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getDownloadBandwidth(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 151
    const/4 v0, 0x4

    .line 152
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    goto :goto_d

    :cond_c
    move v1, p1

    :goto_d
    return v1
.end method

.method blacklist getDownloadRetransRate(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 188
    const/16 v0, 0x40

    .line 189
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getEnablePush(Z)Z
    .registers 7
    .param p1, "defaultValue"    # Z

    .line 158
    const/4 v0, 0x4

    .line 159
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    goto :goto_13

    :cond_e
    if-eqz p1, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    if-ne v1, v3, :cond_16

    move v2, v3

    :cond_16
    return v2
.end method

.method blacklist getHeaderTableSize()I
    .registers 4

    .line 145
    const/4 v0, 0x2

    .line 146
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method blacklist getInitialWindowSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 199
    const/16 v0, 0x80

    .line 200
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getMaxConcurrentStreams(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 170
    const/16 v0, 0x10

    .line 171
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getMaxFrameSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 182
    const/16 v0, 0x20

    .line 183
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getMaxHeaderListSize(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 194
    const/16 v0, 0x40

    .line 195
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getRoundTripTime(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 164
    const/16 v0, 0x8

    .line 165
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_e

    :cond_d
    move v1, p1

    :goto_e
    return v1
.end method

.method blacklist getUploadBandwidth(I)I
    .registers 5
    .param p1, "defaultValue"    # I

    .line 139
    const/4 v0, 0x2

    .line 140
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_d

    :cond_c
    move v1, p1

    :goto_d
    return v1
.end method

.method blacklist isFlowControlDisabled()Z
    .registers 5

    .line 211
    const/16 v0, 0x400

    .line 212
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/16 v3, 0xa

    aget v1, v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 213
    .local v1, "value":I
    :goto_10
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method

.method blacklist isPersisted(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 227
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 228
    .local v1, "bit":I
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method blacklist isSet(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 115
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 116
    .local v1, "bit":I
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method blacklist merge(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "other"    # Lcom/android/okhttp/internal/framed/Settings;

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    .line 237
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_17

    .line 238
    :cond_c
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 236
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method blacklist persistValue(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 221
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 222
    .local v1, "bit":I
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method blacklist set(III)Lcom/android/okhttp/internal/framed/Settings;
    .registers 7
    .param p1, "id"    # I
    .param p2, "idFlags"    # I
    .param p3, "value"    # I

    .line 92
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    .line 93
    return-object p0

    .line 96
    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 97
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    .line 98
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_17

    .line 99
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_1d

    .line 101
    :cond_17
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    .line 103
    :goto_1d
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_27

    .line 104
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_2d

    .line 106
    :cond_27
    iget v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    .line 109
    :goto_2d
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    aput p3, v1, p1

    .line 110
    return-object p0
.end method

.method blacklist size()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
