.class public final Lcom/android/okhttp/MultipartBuilder;
.super Ljava/lang/Object;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lcom/android/okhttp/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/android/okhttp/MediaType;

.field public static final FORM:Lcom/android/okhttp/MediaType;

.field public static final MIXED:Lcom/android/okhttp/MediaType;

.field public static final PARALLEL:Lcom/android/okhttp/MediaType;


# instance fields
.field private final boundary:Lcom/android/okhttp/okio/ByteString;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/android/okhttp/MediaType;


# direct methods
.method static synthetic -get0()[B
    .registers 1

    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    return-object v0
.end method

.method static synthetic -get1()[B
    .registers 1

    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    return-object v0
.end method

.method static synthetic -get2()[B
    .registers 1

    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const-string/jumbo v0, "multipart/mixed"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    .line 45
    const-string/jumbo v0, "multipart/alternative"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->ALTERNATIVE:Lcom/android/okhttp/MediaType;

    .line 53
    const-string/jumbo v0, "multipart/digest"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DIGEST:Lcom/android/okhttp/MediaType;

    .line 60
    const-string/jumbo v0, "multipart/parallel"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->PARALLEL:Lcom/android/okhttp/MediaType;

    .line 68
    const-string/jumbo v0, "multipart/form-data"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->FORM:Lcom/android/okhttp/MediaType;

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_50

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    .line 31
    return-void

    .line 70
    :array_44
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 71
    nop

    :array_4a
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 72
    nop

    :array_50
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    .line 93
    return-void
.end method

.method private static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 145
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_2e

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_32

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 150
    :sswitch_19
    const-string/jumbo v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 153
    :sswitch_20
    const-string/jumbo v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 156
    :sswitch_27
    const-string/jumbo v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 163
    .end local v0    # "ch":C
    :cond_2e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    return-object p0

    .line 148
    :sswitch_data_32
    .sparse-switch
        0xa -> :sswitch_19
        0xd -> :sswitch_20
        0x22 -> :sswitch_27
    .end sparse-switch
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/MultipartBuilder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {v1, p2}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "value"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 174
    if-nez p1, :cond_b

    .line 175
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-eqz p2, :cond_21

    .line 181
    const-string/jumbo v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v0, p2}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_21
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Content-Disposition"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/okhttp/Headers;->of([Ljava/lang/String;)Lcom/android/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 5
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 118
    if-nez p2, :cond_b

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_b
    if-eqz p1, :cond_1f

    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1f
    if-eqz p1, :cond_33

    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_33
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public addPart(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/okhttp/RequestBody;
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_11
    new-instance v0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;

    iget-object v1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    iget-object v2, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    iget-object v3, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    iget-object v4, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public type(Lcom/android/okhttp/MediaType;)Lcom/android/okhttp/MultipartBuilder;
    .registers 5
    .param p1, "type"    # Lcom/android/okhttp/MediaType;

    .prologue
    .line 101
    if-nez p1, :cond_b

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_b
    invoke-virtual {p1}, Lcom/android/okhttp/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_32
    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    .line 108
    return-object p0
.end method
