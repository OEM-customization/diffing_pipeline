.class Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 65
    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 69
    .local v0, "result":I
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 70
    sget-object v1, Lcom/android/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;->setDictionary([B)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 73
    :cond_15
    return v0
.end method
