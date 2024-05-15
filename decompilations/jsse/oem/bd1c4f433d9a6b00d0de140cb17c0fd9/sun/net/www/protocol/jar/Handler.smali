.class public Lsun/net/www/protocol/jar/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field private static final separator:Ljava/lang/String; = "!/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private static indexOfBangSlash(Ljava/lang/String;)I
    .registers 5
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    .local v0, "indexOfBang":I
    :goto_5
    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_25

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_22

    .line 48
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_22

    .line 49
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 51
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 54
    :cond_25
    return v3
.end method

.method private parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, "url":Ljava/net/URL;
    const/4 v1, -0x1

    .line 170
    .local v1, "index":I
    invoke-static {p1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12

    .line 171
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "no !/ in spec"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_12
    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    :try_start_15
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "innerSpec":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 181
    .local v3, "url":Ljava/net/URL;
    return-object p1

    .line 177
    .end local v2    # "innerSpec":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catch_1f
    move-exception v0

    .line 178
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    const-string/jumbo v6, " ("

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    const-string/jumbo v6, ")"

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 185
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "ctxFile":Ljava/lang/String;
    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 188
    invoke-static {v1}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "bangSlash":I
    if-ne v0, v4, :cond_36

    .line 190
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed context url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string/jumbo v5, ": no !/"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_36
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    .end local v0    # "bangSlash":I
    :cond_3a
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_76

    .line 199
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 200
    .local v2, "lastSlash":I
    if-ne v2, v4, :cond_70

    .line 201
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed context url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_70
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v2    # "lastSlash":I
    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected hashCode(Ljava/net/URL;)I
    .registers 13
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    const/4 v10, 0x0

    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, "h":I
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "protocol":Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/lit8 v5, v9, 0x0

    .line 103
    :cond_e
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "file":Ljava/lang/String;
    const-string/jumbo v9, "!/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 106
    .local v7, "sep":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_22

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/2addr v9, v5

    return v9

    .line 109
    :cond_22
    const/4 v0, 0x0

    .line 110
    .local v0, "enclosedURL":Ljava/net/URL;
    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "fileWithoutEntry":Ljava/lang/String;
    :try_start_27
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_2c} :catch_3e

    .line 113
    .end local v0    # "enclosedURL":Ljava/net/URL;
    .local v1, "enclosedURL":Ljava/net/URL;
    :try_start_2c
    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_2f} :catch_45

    move-result v9

    add-int/2addr v5, v9

    move-object v0, v1

    .line 118
    .end local v1    # "enclosedURL":Ljava/net/URL;
    :goto_32
    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "entry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/2addr v5, v9

    .line 121
    return v5

    .line 114
    .end local v2    # "entry":Ljava/lang/String;
    .restart local v0    # "enclosedURL":Ljava/net/URL;
    :catch_3e
    move-exception v8

    .line 115
    .end local v0    # "enclosedURL":Ljava/net/URL;
    .local v8, "unused":Ljava/net/MalformedURLException;
    :goto_3f
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_32

    .line 114
    .end local v8    # "unused":Ljava/net/MalformedURLException;
    .restart local v1    # "enclosedURL":Ljava/net/URL;
    :catch_45
    move-exception v8

    .restart local v8    # "unused":Ljava/net/MalformedURLException;
    move-object v0, v1

    .end local v1    # "enclosedURL":Ljava/net/URL;
    .local v0, "enclosedURL":Ljava/net/URL;
    goto :goto_3f
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection;

    invoke-direct {v0, p1, p0}, Lsun/net/www/protocol/jar/JarURLConnection;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 21
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .prologue
    .line 129
    const/4 v7, 0x0

    .line 130
    .local v7, "file":Ljava/lang/String;
    const/4 v8, 0x0

    .line 132
    .local v8, "ref":Ljava/lang/String;
    const/16 v2, 0x23

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 133
    .local v14, "refPos":I
    move/from16 v0, p3

    if-ne v14, v0, :cond_5a

    const/4 v13, 0x1

    .line 134
    .local v13, "refOnly":Z
    :goto_11
    const/4 v2, -0x1

    if-le v14, v2, :cond_26

    .line 135
    add-int/lit8 v2, v14, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "ref":Ljava/lang/String;
    if-eqz v13, :cond_26

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 144
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "ref":Ljava/lang/String;
    :cond_26
    const/4 v9, 0x0

    .line 145
    .local v9, "absoluteSpec":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3d

    .line 146
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 148
    .end local v9    # "absoluteSpec":Z
    :cond_3d
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 150
    if-eqz v9, :cond_5c

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lsun/net/www/protocol/jar/Handler;->parseAbsoluteSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 163
    :cond_4b
    :goto_4b
    const-string/jumbo v4, "jar"

    const-string/jumbo v5, ""

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lsun/net/www/protocol/jar/Handler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 133
    .end local v13    # "refOnly":Z
    .restart local v7    # "file":Ljava/lang/String;
    .local v8, "ref":Ljava/lang/String;
    :cond_5a
    const/4 v13, 0x0

    .restart local v13    # "refOnly":Z
    goto :goto_11

    .line 152
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "ref":Ljava/lang/String;
    :cond_5c
    if-nez v13, :cond_4b

    .line 153
    invoke-direct/range {p0 .. p2}, Lsun/net/www/protocol/jar/Handler;->parseContextSpec(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "file":Ljava/lang/String;
    invoke-static {v7}, Lsun/net/www/protocol/jar/Handler;->indexOfBangSlash(Ljava/lang/String;)I

    move-result v11

    .line 157
    .local v11, "bangSlash":I
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, "toBangSlash":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, "afterBangSlash":Ljava/lang/String;
    new-instance v12, Lsun/net/www/ParseUtil;

    invoke-direct {v12}, Lsun/net/www/ParseUtil;-><init>()V

    .line 160
    .local v12, "canonizer":Lsun/net/www/ParseUtil;
    invoke-virtual {v12, v10}, Lsun/net/www/ParseUtil;->canonizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4b
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 15
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "jar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "jar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1e

    .line 63
    :cond_1c
    const/4 v10, 0x0

    return v10

    .line 65
    :cond_1e
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "file1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "file2":Ljava/lang/String;
    const-string/jumbo v10, "!/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 68
    .local v7, "sep1":I
    const-string/jumbo v10, "!/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 70
    .local v8, "sep2":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3a

    const/4 v10, -0x1

    if-ne v8, v10, :cond_3f

    .line 71
    :cond_3a
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v10

    return v10

    .line 74
    :cond_3f
    add-int/lit8 v10, v7, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "entry1":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "entry2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 78
    const/4 v10, 0x0

    return v10

    .line 80
    :cond_53
    const/4 v0, 0x0

    .local v0, "enclosedURL1":Ljava/net/URL;
    const/4 v2, 0x0

    .line 82
    .local v2, "enclosedURL2":Ljava/net/URL;
    :try_start_55
    new-instance v1, Ljava/net/URL;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/net/MalformedURLException; {:try_start_55 .. :try_end_5f} :catch_71

    .line 83
    .local v1, "enclosedURL1":Ljava/net/URL;
    :try_start_5f
    new-instance v2, Ljava/net/URL;

    .end local v0    # "enclosedURL1":Ljava/net/URL;
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/net/MalformedURLException; {:try_start_5f .. :try_end_69} :catch_79

    .line 88
    .local v2, "enclosedURL2":Ljava/net/URL;
    invoke-super {p0, v1, v2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v10

    if-nez v10, :cond_77

    .line 89
    const/4 v10, 0x0

    return v10

    .line 84
    .end local v1    # "enclosedURL1":Ljava/net/URL;
    .restart local v0    # "enclosedURL1":Ljava/net/URL;
    .local v2, "enclosedURL2":Ljava/net/URL;
    :catch_71
    move-exception v9

    .line 85
    .end local v0    # "enclosedURL1":Ljava/net/URL;
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    .local v9, "unused":Ljava/net/MalformedURLException;
    :goto_72
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v10

    return v10

    .line 92
    .end local v9    # "unused":Ljava/net/MalformedURLException;
    .restart local v1    # "enclosedURL1":Ljava/net/URL;
    .local v2, "enclosedURL2":Ljava/net/URL;
    :cond_77
    const/4 v10, 0x1

    return v10

    .line 84
    .end local v2    # "enclosedURL2":Ljava/net/URL;
    :catch_79
    move-exception v9

    .restart local v9    # "unused":Ljava/net/MalformedURLException;
    move-object v0, v1

    .end local v1    # "enclosedURL1":Ljava/net/URL;
    .local v0, "enclosedURL1":Ljava/net/URL;
    goto :goto_72
.end method
