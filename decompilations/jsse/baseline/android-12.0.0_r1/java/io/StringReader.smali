.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o mark:I

.field private greylist-max-o next:I

.field private greylist-max-o str:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/StringReader;->next:I

    .line 41
    iput v0, p0, Ljava/io/StringReader;->mark:I

    .line 49
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->length:I

    .line 51
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 57
    return-void

    .line 56
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    if-ltz p1, :cond_11

    .line 173
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_5
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 175
    iget v1, p0, Ljava/io/StringReader;->next:I

    iput v1, p0, Ljava/io/StringReader;->mark:I

    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1

    .line 171
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-ahead limit < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 70
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_f

    .line 71
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 72
    :cond_f
    iget-object v2, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/io/StringReader;->next:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    return v1

    .line 73
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api read([CII)I
    .registers 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 91
    if-ltz p2, :cond_39

    array-length v1, p1

    if-gt p2, v1, :cond_39

    if-ltz p3, :cond_39

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_39

    add-int v1, p2, p3

    if-ltz v1, :cond_39

    .line 94
    if-nez p3, :cond_1b

    .line 95
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 97
    :cond_1b
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_24

    .line 98
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 99
    :cond_24
    sub-int/2addr v2, v1

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 100
    .local v1, "n":I
    iget-object v2, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v3, p0, Ljava/io/StringReader;->next:I

    add-int v4, v3, v1

    invoke-virtual {v2, v3, v4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 101
    iget v2, p0, Ljava/io/StringReader;->next:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/StringReader;->next:I

    .line 102
    monitor-exit v0

    return v1

    .line 93
    .end local v1    # "n":I
    :cond_39
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/StringReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 103
    .restart local p0    # "this":Ljava/io/StringReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public whitelist test-api ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 145
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 146
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 188
    iget v1, p0, Ljava/io/StringReader;->mark:I

    iput v1, p0, Ljava/io/StringReader;->next:I

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "ns"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->ensureOpen()V

    .line 125
    iget v1, p0, Ljava/io/StringReader;->next:I

    iget v2, p0, Ljava/io/StringReader;->length:I

    if-lt v1, v2, :cond_10

    .line 126
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    .line 128
    :cond_10
    sub-int/2addr v2, v1

    int-to-long v1, v2

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 129
    .local v1, "n":J
    iget v3, p0, Ljava/io/StringReader;->next:I

    neg-int v3, v3

    int-to-long v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide v1, v3

    .line 130
    iget v3, p0, Ljava/io/StringReader;->next:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    long-to-int v3, v3

    iput v3, p0, Ljava/io/StringReader;->next:I

    .line 131
    monitor-exit v0

    return-wide v1

    .line 132
    .end local v1    # "n":J
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
