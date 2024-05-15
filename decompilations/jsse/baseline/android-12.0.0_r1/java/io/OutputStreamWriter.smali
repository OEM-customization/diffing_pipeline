.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private final greylist-max-o se:Lsun/nio/cs/StreamEncoder;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 109
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    :try_start_4
    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_e

    .line 114
    nop

    .line 115
    return-void

    .line 112
    :catch_e
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 98
    if-eqz p2, :cond_c

    .line 100
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 101
    return-void

    .line 99
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 130
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 131
    if-eqz p2, :cond_c

    .line 133
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 134
    return-void

    .line 132
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 149
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 150
    if-eqz p2, :cond_c

    .line 152
    invoke-static {p1, p0, p2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    .line 153
    return-void

    .line 151
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset encoder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->close()V

    .line 234
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flush()V

    .line 230
    return-void
.end method

.method greylist-max-o flushBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->flushBuffer()V

    .line 186
    return-void
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0}, Lsun/nio/cs/StreamEncoder;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1}, Lsun/nio/cs/StreamEncoder;->write(I)V

    .line 195
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write(Ljava/lang/String;II)V

    .line 221
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->se:Lsun/nio/cs/StreamEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 208
    return-void
.end method
