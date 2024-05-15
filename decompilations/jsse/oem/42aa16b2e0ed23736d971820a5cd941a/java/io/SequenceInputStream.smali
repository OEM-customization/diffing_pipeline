.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field greylist-max-o e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o in:Ljava/io/InputStream;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 7
    .param p1, "s1"    # Ljava/io/InputStream;
    .param p2, "s2"    # Ljava/io/InputStream;

    .line 87
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 90
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/io/InputStream;>;"
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 94
    :try_start_15
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :catch_1a
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "panic"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Enumeration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 69
    :try_start_5
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_a

    .line 73
    nop

    .line 74
    return-void

    .line 70
    :catch_a
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "panic"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_6
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 233
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_8

    .line 234
    return-void

    .line 233
    :cond_8
    goto :goto_0
.end method

.method final greylist-max-o nextStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_7
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 110
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 111
    if-eqz v0, :cond_1d

    goto :goto_20

    .line 112
    :cond_1d
    throw v1

    .line 114
    :cond_1e
    iput-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 116
    :goto_20
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :goto_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 164
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 165
    .local v0, "c":I
    if-eq v0, v1, :cond_c

    .line 166
    return v0

    .line 168
    :cond_c
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 169
    .end local v0    # "c":I
    goto :goto_0

    .line 170
    :cond_10
    return v1
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 198
    return v1

    .line 199
    :cond_6
    if-eqz p1, :cond_2b

    .line 201
    if-ltz p2, :cond_25

    if-ltz p3, :cond_25

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_25

    .line 203
    if-nez p3, :cond_14

    .line 204
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_14
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 208
    .local v0, "n":I
    if-lez v0, :cond_1d

    .line 209
    return v0

    .line 211
    :cond_1d
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 212
    .end local v0    # "n":I
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_14

    .line 213
    return v1

    .line 202
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 200
    :cond_2b
    const/4 v0, 0x0

    throw v0
.end method
