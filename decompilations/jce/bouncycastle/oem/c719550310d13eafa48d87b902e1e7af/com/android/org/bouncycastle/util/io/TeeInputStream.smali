.class public Lcom/android/org/bouncycastle/util/io/TeeInputStream;
.super Ljava/io/InputStream;
.source "TeeInputStream.java"


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    .line 25
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 65
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 52
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 54
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 39
    .local v0, "i":I
    if-lez v0, :cond_d

    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    :cond_d
    return v0
.end method
