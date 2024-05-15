.class public final Lcom/android/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source "FormEncodingBuilder.java"


# static fields
.field private static final CONTENT_TYPE:Lcom/android/okhttp/MediaType;


# instance fields
.field private final content:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    .line 24
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_15

    .line 33
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 35
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 36
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v5, v2

    move v6, v2

    move v8, v7

    .line 35
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 38
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 39
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v5, v2

    move v6, v2

    move v8, v7

    .line 38
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 40
    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 45
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_15

    .line 46
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 48
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 49
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v6, v2

    move v7, v5

    move v8, v5

    .line 48
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 52
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v6, v2

    move v7, v5

    move v8, v5

    .line 51
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 53
    return-object p0
.end method

.method public build()Lcom/android/okhttp/RequestBody;
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->snapshot()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
