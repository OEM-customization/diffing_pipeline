.class final Lcom/android/okhttp/ResponseBody$1;
.super Lcom/android/okhttp/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-wide p2, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    .line 122
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method
