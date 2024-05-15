.class Lsun/net/ftp/impl/FtpClient$FtpFileIterator;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtpFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lsun/net/ftp/FtpDirEntry;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private eof:Z

.field private fparser:Lsun/net/ftp/FtpDirParser;

.field private in:Ljava/io/BufferedReader;

.field private nextFile:Lsun/net/ftp/FtpDirEntry;

.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method public constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V
    .registers 5
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;
    .param p2, "p"    # Lsun/net/ftp/FtpDirParser;
    .param p3, "in"    # Ljava/io/BufferedReader;

    .prologue
    const/4 v0, 0x0

    .line 1818
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1814
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1815
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1819
    iput-object p3, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    .line 1820
    iput-object p2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    .line 1821
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1822
    return-void
.end method

.method private readNext()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1825
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1826
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    if-eqz v2, :cond_8

    .line 1827
    return-void

    .line 1829
    :cond_8
    const/4 v1, 0x0

    .line 1832
    :cond_9
    :try_start_9
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 1834
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->fparser:Lsun/net/ftp/FtpDirParser;

    invoke-interface {v2, v1}, Lsun/net/ftp/FtpDirParser;->parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v2

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1835
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v2, :cond_1e

    .line 1836
    return-void

    .line 1839
    :cond_1e
    if-nez v1, :cond_9

    .line 1840
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_29

    .line 1843
    .end local v1    # "line":Ljava/lang/String;
    :goto_25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1844
    return-void

    .line 1841
    :catch_29
    move-exception v0

    .local v0, "iOException":Ljava/io/IOException;
    goto :goto_25
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1861
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 1862
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1864
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->eof:Z

    .line 1865
    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1866
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1850
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->next()Lsun/net/ftp/FtpDirEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lsun/net/ftp/FtpDirEntry;
    .registers 2

    .prologue
    .line 1851
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->nextFile:Lsun/net/ftp/FtpDirEntry;

    .line 1852
    .local v0, "ret":Lsun/net/ftp/FtpDirEntry;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;->readNext()V

    .line 1853
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 1857
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
