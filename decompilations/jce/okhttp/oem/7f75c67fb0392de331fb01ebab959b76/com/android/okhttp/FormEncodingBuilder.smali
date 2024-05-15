.class public final Lcom/android/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source "FormEncodingBuilder.java"


# static fields
.field private static final blacklist CONTENT_TYPE:Lcom/android/okhttp/MediaType;


# instance fields
.field private final blacklist content:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    nop

    .line 28
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    .line 27
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 35
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 37
    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v3, p1

    invoke-static/range {v2 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 39
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 40
    iget-object v2, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v3, p2

    invoke-static/range {v2 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 42
    return-object p0
.end method

.method public blacklist addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 50
    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v3, p1

    invoke-static/range {v2 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 52
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 53
    iget-object v2, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v3, p2

    invoke-static/range {v2 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 55
    return-object p0
.end method

.method public blacklist build()Lcom/android/okhttp/RequestBody;
    .registers 3

    .line 59
    sget-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->snapshot()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
