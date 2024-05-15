.class public final Lcom/android/okhttp/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final greylist-max-o PARAMETER:Ljava/util/regex/Pattern;

.field private static final greylist-max-o QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final greylist-max-o TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final greylist-max-o TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final greylist-max-o charset:Ljava/lang/String;

.field private final greylist-max-o mediaType:Ljava/lang/String;

.field private final greylist-max-o subtype:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static greylist-max-o parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;
    .registers 13
    .param p0, "string"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/android/okhttp/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    .local v0, "typeSubtype":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    .line 55
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "subtype":Ljava/lang/String;
    const/4 v6, 0x0

    .line 59
    .local v6, "charset":Ljava/lang/String;
    sget-object v7, Lcom/android/okhttp/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 60
    .local v7, "parameter":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    .local v8, "s":I
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_89

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 62
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_43

    return-object v2

    .line 64
    :cond_43
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_84

    const-string v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_52

    goto :goto_84

    .line 66
    :cond_52
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5d

    .line 67
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_62

    .line 68
    :cond_5d
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    :goto_62
    nop

    .line 69
    .local v10, "charsetParameter":Ljava/lang/String;
    if-eqz v6, :cond_83

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6c

    goto :goto_83

    .line 70
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple different charsets: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_83
    :goto_83
    move-object v6, v10

    .line 60
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "charsetParameter":Ljava/lang/String;
    :cond_84
    :goto_84
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    goto :goto_2f

    .line 75
    .end local v8    # "s":I
    :cond_89
    new-instance v1, Lcom/android/okhttp/MediaType;

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/android/okhttp/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public greylist-max-o charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public greylist-max-o charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3
    .param p1, "defaultValue"    # Ljava/nio/charset/Charset;

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p1

    :goto_a
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 119
    instance-of v0, p1, Lcom/android/okhttp/MediaType;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/MediaType;

    iget-object v0, v0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o subtype()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o type()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/okhttp/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
