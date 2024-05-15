.class Ljava/util/zip/GZIPInputStream$1;
.super Ljava/io/FilterInputStream;
.source "GZIPInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/GZIPInputStream;->readTrailer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/zip/GZIPInputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/GZIPInputStream;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/zip/GZIPInputStream;
    .param p2, "$anonymous0"    # Ljava/io/InputStream;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/zip/GZIPInputStream$1;->this$0:Ljava/util/zip/GZIPInputStream;

    .line 218
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method
