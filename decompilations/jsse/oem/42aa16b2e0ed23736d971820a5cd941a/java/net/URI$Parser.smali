.class Ljava/net/URI$Parser;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field private greylist-max-o input:Ljava/lang/String;

.field private greylist-max-o ipv6byteCount:I

.field private greylist-max-o requireServerAuthority:Z

.field final synthetic blacklist this$0:Ljava/net/URI;


# direct methods
.method constructor blacklist <init>(Ljava/net/URI;Ljava/lang/String;)V
    .registers 4
    .param p2, "s"    # Ljava/lang/String;

    .line 2881
    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2879
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3501
    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 2882
    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    .line 2883
    # setter for: Ljava/net/URI;->string:Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/net/URI;->access$002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 2884
    return-void
.end method

.method private greylist-max-o at(IIC)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 2927
    if-ge p1, p2, :cond_a

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o at(IILjava/lang/String;)Z
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 2934
    move v0, p1

    .line 2935
    .local v0, "p":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2936
    .local v1, "sn":I
    sub-int v2, p2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_b

    .line 2937
    return v3

    .line 2938
    :cond_b
    const/4 v2, 0x0

    .line 2939
    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_20

    .line 2940
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p":I
    .local v4, "p":I
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_1c

    .line 2941
    move v0, v4

    goto :goto_20

    .line 2943
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_c

    .line 2945
    .end local v4    # "p":I
    .restart local v0    # "p":I
    :cond_20
    :goto_20
    if-ne v2, v1, :cond_23

    const/4 v3, 0x1

    :cond_23
    return v3
.end method

.method private greylist-max-o charAt(I)C
    .registers 3
    .param p1, "p"    # I

    .line 2921
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private greylist-max-o checkChar(IJJLjava/lang/String;)V
    .registers 15
    .param p1, "p"    # I
    .param p2, "lowMask"    # J
    .param p4, "highMask"    # J
    .param p6, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3076
    add-int/lit8 v2, p1, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3077
    return-void
.end method

.method private greylist-max-o checkChars(IIJJLjava/lang/String;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .param p7, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3064
    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3065
    .local v0, "p":I
    if-ge v0, p2, :cond_1a

    .line 3066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3067
    :cond_1a
    return-void
.end method

.method private greylist-max-o fail(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2889
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fail(Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2893
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private greylist-max-o failExpecting(Ljava/lang/String;I)V
    .registers 5
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2900
    return-void
.end method

.method private greylist-max-o failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "prior"    # Ljava/lang/String;
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " following "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2906
    return-void
.end method

.method private greylist-max-o parseAuthority(II)I
    .registers 16
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3174
    move v7, p1

    .line 3175
    .local v7, "p":I
    move v8, v7

    .line 3176
    .local v8, "q":I
    const/4 v9, 0x0

    .line 3181
    .local v9, "ex":Ljava/net/URISyntaxException;
    const-string v0, ""

    const-string v1, "]"

    invoke-direct {p0, v7, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v0, v7, :cond_25

    .line 3183
    # getter for: Ljava/net/URI;->L_SERVER_PERCENT:J
    invoke-static {}, Ljava/net/URI;->access$1600()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_SERVER_PERCENT:J
    invoke-static {}, Ljava/net/URI;->access$1700()J

    move-result-wide v5

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-ne v0, p2, :cond_22

    move v0, v10

    goto :goto_23

    :cond_22
    move v0, v11

    :goto_23
    move v12, v0

    .local v0, "serverChars":Z
    goto :goto_3a

    .line 3185
    .end local v0    # "serverChars":Z
    :cond_25
    # getter for: Ljava/net/URI;->L_SERVER:J
    invoke-static {}, Ljava/net/URI;->access$1800()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_SERVER:J
    invoke-static {}, Ljava/net/URI;->access$1900()J

    move-result-wide v5

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-ne v0, p2, :cond_38

    move v0, v10

    goto :goto_39

    :cond_38
    move v0, v11

    :goto_39
    move v12, v0

    .line 3187
    .local v12, "serverChars":Z
    :goto_3a
    # getter for: Ljava/net/URI;->L_REG_NAME:J
    invoke-static {}, Ljava/net/URI;->access$2000()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_REG_NAME:J
    invoke-static {}, Ljava/net/URI;->access$2100()J

    move-result-wide v5

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-ne v0, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v10, v11

    :goto_4d
    move v0, v10

    .line 3189
    .local v0, "regChars":Z
    if-eqz v0, :cond_5c

    if-nez v12, :cond_5c

    .line 3191
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v7, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->authority:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3192
    return p2

    .line 3195
    :cond_5c
    if-eqz v12, :cond_8e

    .line 3200
    :try_start_5e
    invoke-direct {p0, v7, p2}, Ljava/net/URI$Parser;->parseServer(II)I

    move-result v1

    move v8, v1

    .line 3201
    if-ge v8, p2, :cond_6a

    .line 3202
    const-string v1, "end of authority"

    invoke-direct {p0, v1, v8}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3203
    :cond_6a
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v7, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->authority:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/net/URISyntaxException; {:try_start_5e .. :try_end_73} :catch_74

    .line 3219
    goto :goto_8e

    .line 3204
    :catch_74
    move-exception v1

    .line 3206
    .local v1, "x":Ljava/net/URISyntaxException;
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v3, 0x0

    # setter for: Ljava/net/URI;->userInfo:Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/net/URI;->access$2302(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3207
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    # setter for: Ljava/net/URI;->host:Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/net/URI;->access$2402(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3208
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v3, -0x1

    # setter for: Ljava/net/URI;->port:I
    invoke-static {v2, v3}, Ljava/net/URI;->access$2502(Ljava/net/URI;I)I

    .line 3209
    iget-boolean v2, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    if-nez v2, :cond_8d

    .line 3216
    move-object v9, v1

    .line 3217
    move v8, v7

    goto :goto_8e

    .line 3212
    :cond_8d
    throw v1

    .line 3222
    .end local v1    # "x":Ljava/net/URISyntaxException;
    :cond_8e
    :goto_8e
    if-ge v8, p2, :cond_a5

    .line 3223
    if-eqz v0, :cond_9c

    .line 3225
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v7, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->authority:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a5

    .line 3226
    :cond_9c
    if-nez v9, :cond_a4

    .line 3231
    const-string v1, "Illegal character in authority"

    invoke-direct {p0, v1, v8}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_a5

    .line 3229
    :cond_a4
    throw v9

    .line 3235
    :cond_a5
    :goto_a5
    return p2
.end method

.method private greylist-max-o parseHierarchical(II)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3137
    move v0, p1

    .line 3138
    .local v0, "p":I
    const/16 v1, 0x2f

    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2a

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3139
    add-int/lit8 v0, v0, 0x2

    .line 3140
    const-string v1, "/?#"

    invoke-direct {p0, v0, p2, v3, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3141
    .local v1, "q":I
    if-le v1, v0, :cond_22

    .line 3142
    invoke-direct {p0, v0, v1}, Ljava/net/URI$Parser;->parseAuthority(II)I

    move-result v0

    goto :goto_2a

    .line 3143
    :cond_22
    if-ge v1, p2, :cond_25

    goto :goto_2a

    .line 3147
    :cond_25
    const-string v2, "authority"

    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3149
    .end local v1    # "q":I
    :cond_2a
    :goto_2a
    const-string v1, "?#"

    invoke-direct {p0, v0, p2, v3, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3150
    .restart local v1    # "q":I
    # getter for: Ljava/net/URI;->L_PATH:J
    invoke-static {}, Ljava/net/URI;->access$1200()J

    move-result-wide v7

    # getter for: Ljava/net/URI;->H_PATH:J
    invoke-static {}, Ljava/net/URI;->access$1300()J

    move-result-wide v9

    const-string v11, "path"

    move-object v4, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v4 .. v11}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3151
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v0, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    # setter for: Ljava/net/URI;->path:Ljava/lang/String;
    invoke-static {v2, v4}, Ljava/net/URI;->access$1402(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3152
    move v0, v1

    .line 3153
    const/16 v2, 0x3f

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 3154
    add-int/lit8 v0, v0, 0x1

    .line 3155
    const-string v2, "#"

    invoke-direct {p0, v0, p2, v3, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3156
    # getter for: Ljava/net/URI;->L_URIC:J
    invoke-static {}, Ljava/net/URI;->access$800()J

    move-result-wide v7

    # getter for: Ljava/net/URI;->H_URIC:J
    invoke-static {}, Ljava/net/URI;->access$900()J

    move-result-wide v9

    const-string v11, "query"

    move-object v4, p0

    move v5, v0

    move v6, v1

    invoke-direct/range {v4 .. v11}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3157
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v0, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    # setter for: Ljava/net/URI;->query:Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/net/URI;->access$1502(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3158
    move v0, v1

    .line 3160
    :cond_74
    return v0
.end method

.method private greylist-max-o parseHostname(II)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3408
    move v0, p1

    .line 3410
    .local v0, "p":I
    const/4 v1, -0x1

    .line 3422
    .local v1, "l":I
    :cond_2
    # getter for: Ljava/net/URI;->L_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2800()J

    move-result-wide v5

    # getter for: Ljava/net/URI;->H_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2900()J

    move-result-wide v7

    move-object v2, p0

    move v3, v0

    move v4, p2

    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v2

    .line 3423
    .local v2, "q":I
    const-string v3, "Illegal character in hostname"

    if-gt v2, v0, :cond_16

    .line 3424
    goto :goto_5c

    .line 3425
    :cond_16
    move v1, v0

    .line 3426
    if-le v2, v0, :cond_50

    .line 3427
    move v0, v2

    .line 3430
    # getter for: Ljava/net/URI;->L_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2800()J

    move-result-wide v4

    # getter for: Ljava/net/URI;->L_DASH:J
    invoke-static {}, Ljava/net/URI;->access$3300()J

    move-result-wide v6

    or-long/2addr v4, v6

    # getter for: Ljava/net/URI;->L_UNDERSCORE:J
    invoke-static {}, Ljava/net/URI;->access$3400()J

    move-result-wide v6

    or-long v7, v4, v6

    # getter for: Ljava/net/URI;->H_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2900()J

    move-result-wide v4

    # getter for: Ljava/net/URI;->H_DASH:J
    invoke-static {}, Ljava/net/URI;->access$3500()J

    move-result-wide v9

    or-long/2addr v4, v9

    # getter for: Ljava/net/URI;->H_UNDERSCORE:J
    invoke-static {}, Ljava/net/URI;->access$3600()J

    move-result-wide v9

    or-long/2addr v9, v4

    move-object v4, p0

    move v5, v0

    move v6, p2

    invoke-direct/range {v4 .. v10}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v2

    .line 3431
    if-le v2, v0, :cond_50

    .line 3432
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4f

    .line 3433
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v3, v4}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3434
    :cond_4f
    move v0, v2

    .line 3437
    :cond_50
    const/16 v4, 0x2e

    invoke-direct {p0, v0, p2, v4}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v2

    .line 3438
    if-gt v2, v0, :cond_59

    .line 3439
    goto :goto_5c

    .line 3440
    :cond_59
    move v0, v2

    .line 3441
    if-lt v0, p2, :cond_2

    .line 3443
    :goto_5c
    if-ge v0, p2, :cond_69

    const/16 v4, 0x3a

    invoke-direct {p0, v0, p2, v4}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v4

    if-nez v4, :cond_69

    .line 3444
    invoke-direct {p0, v3, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3446
    :cond_69
    if-gez v1, :cond_70

    .line 3447
    const-string v4, "hostname"

    invoke-direct {p0, v4, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3451
    :cond_70
    if-le v1, p1, :cond_85

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v4

    const-wide/16 v5, 0x0

    # getter for: Ljava/net/URI;->H_ALPHA:J
    invoke-static {}, Ljava/net/URI;->access$400()J

    move-result-wide v7

    # invokes: Ljava/net/URI;->match(CJJ)Z
    invoke-static {v4, v5, v6, v7, v8}, Ljava/net/URI;->access$300(CJJ)Z

    move-result v4

    if-nez v4, :cond_85

    .line 3452
    invoke-direct {p0, v3, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3455
    :cond_85
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    # setter for: Ljava/net/URI;->host:Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/net/URI;->access$2402(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3456
    return v0
.end method

.method private greylist-max-o parseIPv4Address(II)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "n"    # I

    .line 3377
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_6} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_20

    .line 3382
    .local v0, "p":I
    nop

    .line 3384
    if-le v0, p1, :cond_14

    if-ge v0, p2, :cond_14

    .line 3388
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_14

    .line 3389
    const/4 v0, -0x1

    .line 3393
    :cond_14
    if-le v0, p1, :cond_1f

    .line 3394
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->host:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2402(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3396
    :cond_1f
    return v0

    .line 3380
    .end local v0    # "p":I
    :catch_20
    move-exception v0

    .line 3381
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v1

    .line 3378
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_22
    move-exception v0

    .line 3379
    .local v0, "x":Ljava/net/URISyntaxException;
    return v1
.end method

.method private greylist-max-o parseIPv6Reference(II)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3506
    move v0, p1

    .line 3508
    .local v0, "p":I
    const/4 v1, 0x0

    .line 3510
    .local v1, "compressedZeros":Z
    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v2

    .line 3512
    .local v2, "q":I
    const-string v3, "::"

    if-le v2, v0, :cond_30

    .line 3513
    move v0, v2

    .line 3514
    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3515
    const/4 v1, 0x1

    .line 3516
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v0

    goto :goto_3d

    .line 3517
    :cond_19
    const/16 v3, 0x3a

    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3518
    add-int/lit8 v3, v0, 0x1

    const-string v4, "IPv4 address"

    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3519
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_3d

    .line 3521
    :cond_30
    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3522
    const/4 v1, 0x1

    .line 3523
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v0

    .line 3525
    :cond_3d
    :goto_3d
    const-string v3, "Malformed IPv6 address"

    if-ge v0, p2, :cond_44

    .line 3526
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3527
    :cond_44
    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_4f

    .line 3528
    const-string v4, "IPv6 address too long"

    invoke-direct {p0, v4, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3529
    :cond_4f
    if-nez v1, :cond_5a

    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ge v4, v5, :cond_5a

    .line 3530
    const-string v4, "IPv6 address too short"

    invoke-direct {p0, v4, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3531
    :cond_5a
    if-eqz v1, :cond_63

    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ne v4, v5, :cond_63

    .line 3532
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3534
    :cond_63
    return v0
.end method

.method private greylist-max-o parseServer(II)I
    .registers 17
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3244
    move-object v9, p0

    move/from16 v10, p2

    move v0, p1

    .line 3248
    .local v0, "p":I
    const-string v11, "/?#"

    const-string v1, "@"

    invoke-direct {p0, v0, v10, v11, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 3249
    .local v12, "q":I
    if-lt v12, v0, :cond_31

    const/16 v1, 0x40

    invoke-direct {p0, v12, v10, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3250
    # getter for: Ljava/net/URI;->L_USERINFO:J
    invoke-static {}, Ljava/net/URI;->access$2600()J

    move-result-wide v4

    # getter for: Ljava/net/URI;->H_USERINFO:J
    invoke-static {}, Ljava/net/URI;->access$2700()J

    move-result-wide v6

    const-string v8, "user info"

    move-object v1, p0

    move v2, v0

    move v3, v12

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3251
    iget-object v1, v9, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v0, v12}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->userInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2302(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3252
    add-int/lit8 v0, v12, 0x1

    .line 3256
    :cond_31
    const/16 v1, 0x5b

    invoke-direct {p0, v0, v10, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    const-string v13, ""

    if-eqz v1, :cond_8c

    .line 3258
    add-int/lit8 v0, v0, 0x1

    .line 3259
    const-string v1, "]"

    invoke-direct {p0, v0, v10, v11, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3260
    .end local v12    # "q":I
    .local v11, "q":I
    if-le v11, v0, :cond_86

    const/16 v1, 0x5d

    invoke-direct {p0, v11, v10, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 3262
    const-string v1, "%"

    invoke-direct {p0, v0, v11, v13, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 3263
    .local v12, "r":I
    if-le v12, v0, :cond_73

    .line 3264
    invoke-direct {p0, v0, v12}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3265
    add-int/lit8 v1, v12, 0x1

    if-ne v1, v11, :cond_61

    .line 3266
    const-string v1, "scope id expected"

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    .line 3268
    :cond_61
    add-int/lit8 v2, v12, 0x1

    # getter for: Ljava/net/URI;->L_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2800()J

    move-result-wide v4

    # getter for: Ljava/net/URI;->H_ALPHANUM:J
    invoke-static {}, Ljava/net/URI;->access$2900()J

    move-result-wide v6

    const-string v8, "scope id"

    move-object v1, p0

    move v3, v11

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    goto :goto_76

    .line 3271
    :cond_73
    invoke-direct {p0, v0, v11}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3273
    :goto_76
    iget-object v1, v9, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v11, 0x1

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->host:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$2402(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3274
    add-int/lit8 v0, v11, 0x1

    .line 3275
    .end local v12    # "r":I
    goto :goto_9a

    .line 3276
    :cond_86
    const-string v1, "closing bracket for IPv6 address"

    invoke-direct {p0, v1, v11}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    goto :goto_9a

    .line 3279
    .end local v11    # "q":I
    .local v12, "q":I
    :cond_8c
    invoke-direct {p0, v0, v10}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    move-result v1

    .line 3280
    .end local v12    # "q":I
    .local v1, "q":I
    if-gt v1, v0, :cond_98

    .line 3281
    invoke-direct {p0, v0, v10}, Ljava/net/URI$Parser;->parseHostname(II)I

    move-result v1

    move v11, v1

    goto :goto_99

    .line 3280
    :cond_98
    move v11, v1

    .line 3282
    .end local v1    # "q":I
    .restart local v11    # "q":I
    :goto_99
    move v0, v11

    .line 3286
    :goto_9a
    const/16 v1, 0x3a

    invoke-direct {p0, v0, v10, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 3287
    add-int/lit8 v12, v0, 0x1

    .line 3288
    .end local v0    # "p":I
    .local v12, "p":I
    const-string v0, "/"

    invoke-direct {p0, v12, v10, v13, v0}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3289
    if-le v11, v12, :cond_d0

    .line 3290
    # getter for: Ljava/net/URI;->L_DIGIT:J
    invoke-static {}, Ljava/net/URI;->access$3000()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, "port number"

    move-object v1, p0

    move v2, v12

    move v3, v11

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3292
    :try_start_ba
    iget-object v0, v9, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v12, v11}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Ljava/net/URI;->port:I
    invoke-static {v0, v1}, Ljava/net/URI;->access$2502(Ljava/net/URI;I)I
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_c7} :catch_c8

    .line 3295
    goto :goto_ce

    .line 3293
    :catch_c8
    move-exception v0

    .line 3294
    .local v0, "x":Ljava/lang/NumberFormatException;
    const-string v1, "Malformed port number"

    invoke-direct {p0, v1, v12}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3296
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :goto_ce
    move v0, v11

    .end local v12    # "p":I
    .local v0, "p":I
    goto :goto_d1

    .line 3289
    .end local v0    # "p":I
    .restart local v12    # "p":I
    :cond_d0
    move v0, v12

    .line 3299
    .end local v12    # "p":I
    .restart local v0    # "p":I
    :cond_d1
    :goto_d1
    if-ge v0, v10, :cond_d8

    .line 3300
    const-string v1, "port number"

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3302
    :cond_d8
    return v0
.end method

.method private greylist-max-o scan(IIC)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 2980
    if-ge p1, p2, :cond_b

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_b

    .line 2981
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 2982
    :cond_b
    return p1
.end method

.method private greylist-max-o scan(IIJJ)I
    .registers 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3038
    move v0, p1

    .line 3039
    .local v0, "p":I
    :goto_1
    if-ge v0, p2, :cond_21

    .line 3040
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    .line 3041
    .local v1, "c":C
    # invokes: Ljava/net/URI;->match(CJJ)Z
    invoke-static {v1, p3, p4, p5, p6}, Ljava/net/URI;->access$300(CJJ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3042
    add-int/lit8 v0, v0, 0x1

    .line 3043
    goto :goto_1

    .line 3045
    :cond_10
    const-wide/16 v2, 0x1

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 3046
    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    move-result v2

    .line 3047
    .local v2, "q":I
    if-le v2, v0, :cond_21

    .line 3048
    move v0, v2

    .line 3049
    goto :goto_1

    .line 3054
    .end local v1    # "c":C
    .end local v2    # "q":I
    :cond_21
    return v0
.end method

.method private greylist-max-o scan(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "err"    # Ljava/lang/String;
    .param p4, "stop"    # Ljava/lang/String;

    .line 2993
    move v0, p1

    .line 2994
    .local v0, "p":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 2995
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    .line 2996
    .local v1, "c":C
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    .line 2997
    const/4 v2, -0x1

    return v2

    .line 2998
    :cond_f
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    .line 2999
    goto :goto_1a

    .line 3000
    :cond_16
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 3001
    goto :goto_1

    .line 3002
    :cond_1a
    :goto_1a
    return v0
.end method

.method private greylist-max-o scanByte(II)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3310
    move v7, p1

    .line 3311
    .local v7, "p":I
    # getter for: Ljava/net/URI;->L_DIGIT:J
    invoke-static {}, Ljava/net/URI;->access$3000()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3312
    .local v0, "q":I
    if-gt v0, v7, :cond_11

    return v0

    .line 3313
    :cond_11
    invoke-direct {p0, v7, v0}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1e

    return v7

    .line 3314
    :cond_1e
    return v0
.end method

.method private greylist-max-o scanEscape(IIC)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "first"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3014
    move v0, p1

    .line 3015
    .local v0, "p":I
    move v1, p3

    .line 3016
    .local v1, "c":C
    const/16 v2, 0x25

    if-ne v1, v2, :cond_3b

    .line 3018
    add-int/lit8 v2, v0, 0x3

    if-gt v2, p2, :cond_35

    add-int/lit8 v2, v0, 0x1

    .line 3019
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    # getter for: Ljava/net/URI;->L_HEX:J
    invoke-static {}, Ljava/net/URI;->access$100()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_HEX:J
    invoke-static {}, Ljava/net/URI;->access$200()J

    move-result-wide v5

    # invokes: Ljava/net/URI;->match(CJJ)Z
    invoke-static {v2, v3, v4, v5, v6}, Ljava/net/URI;->access$300(CJJ)Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, v0, 0x2

    .line 3020
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    # getter for: Ljava/net/URI;->L_HEX:J
    invoke-static {}, Ljava/net/URI;->access$100()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_HEX:J
    invoke-static {}, Ljava/net/URI;->access$200()J

    move-result-wide v5

    # invokes: Ljava/net/URI;->match(CJJ)Z
    invoke-static {v2, v3, v4, v5, v6}, Ljava/net/URI;->access$300(CJJ)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3021
    add-int/lit8 v2, v0, 0x3

    return v2

    .line 3023
    :cond_35
    const-string v2, "Malformed escape pair"

    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_4e

    .line 3024
    :cond_3b
    const/16 v2, 0x80

    if-le v1, v2, :cond_4e

    .line 3025
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3026
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3028
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 3030
    :cond_4e
    :goto_4e
    return v0
.end method

.method private greylist-max-o scanHexPost(II)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3540
    move v0, p1

    .line 3543
    .local v0, "p":I
    if-ne v0, p2, :cond_4

    .line 3544
    return v0

    .line 3546
    :cond_4
    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v1

    .line 3547
    .local v1, "q":I
    const-string v2, "hex digits or IPv4 address"

    if-le v1, v0, :cond_22

    .line 3548
    move v0, v1

    .line 3549
    const/16 v3, 0x3a

    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3550
    add-int/lit8 v0, v0, 0x1

    .line 3551
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3552
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_2c

    .line 3555
    :cond_22
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3556
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3558
    :cond_2c
    :goto_2c
    return v0
.end method

.method private greylist-max-o scanHexSeq(II)I
    .registers 16
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3566
    move v7, p1

    .line 3569
    .local v7, "p":I
    # getter for: Ljava/net/URI;->L_HEX:J
    invoke-static {}, Ljava/net/URI;->access$100()J

    move-result-wide v3

    # getter for: Ljava/net/URI;->H_HEX:J
    invoke-static {}, Ljava/net/URI;->access$200()J

    move-result-wide v5

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3570
    .local v0, "q":I
    const/4 v1, -0x1

    if-gt v0, v7, :cond_14

    .line 3571
    return v1

    .line 3572
    :cond_14
    const/16 v2, 0x2e

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3573
    return v1

    .line 3574
    :cond_1d
    add-int/lit8 v3, v7, 0x4

    const-string v4, "IPv6 hexadecimal digit sequence too long"

    if-le v0, v3, :cond_26

    .line 3575
    invoke-direct {p0, v4, v7}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3576
    :cond_26
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3577
    move v3, v0

    .line 3578
    .end local v7    # "p":I
    .local v3, "p":I
    :goto_2d
    if-ge v3, p2, :cond_70

    .line 3579
    const/16 v5, 0x3a

    invoke-direct {p0, v3, p2, v5}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v6

    if-nez v6, :cond_38

    .line 3580
    goto :goto_70

    .line 3581
    :cond_38
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6, p2, v5}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3582
    goto :goto_70

    .line 3583
    :cond_41
    add-int/lit8 v3, v3, 0x1

    .line 3584
    # getter for: Ljava/net/URI;->L_HEX:J
    invoke-static {}, Ljava/net/URI;->access$100()J

    move-result-wide v9

    # getter for: Ljava/net/URI;->H_HEX:J
    invoke-static {}, Ljava/net/URI;->access$200()J

    move-result-wide v11

    move-object v6, p0

    move v7, v3

    move v8, p2

    invoke-direct/range {v6 .. v12}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3585
    if-gt v0, v3, :cond_59

    .line 3586
    const-string v5, "digits for an IPv6 address"

    invoke-direct {p0, v5, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3587
    :cond_59
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 3588
    add-int/2addr v3, v1

    .line 3589
    goto :goto_70

    .line 3591
    :cond_61
    add-int/lit8 v5, v3, 0x4

    if-le v0, v5, :cond_68

    .line 3592
    invoke-direct {p0, v4, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3593
    :cond_68
    iget v5, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3594
    move v3, v0

    goto :goto_2d

    .line 3597
    :cond_70
    :goto_70
    return v3
.end method

.method private greylist-max-o scanIPv4Address(IIZ)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3335
    move v7, p1

    .line 3337
    .local v7, "p":I
    # getter for: Ljava/net/URI;->L_DIGIT:J
    invoke-static {}, Ljava/net/URI;->access$3000()J

    move-result-wide v0

    # getter for: Ljava/net/URI;->L_DOT:J
    invoke-static {}, Ljava/net/URI;->access$3100()J

    move-result-wide v2

    or-long v3, v0, v2

    # getter for: Ljava/net/URI;->H_DOT:J
    invoke-static {}, Ljava/net/URI;->access$3200()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    or-long/2addr v5, v0

    move-object v0, p0

    move v1, v7

    move v2, p2

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3338
    .local v0, "m":I
    const/4 v1, -0x1

    if-le v0, v7, :cond_6b

    if-eqz p3, :cond_21

    if-eq v0, p2, :cond_21

    goto :goto_6b

    .line 3343
    :cond_21
    invoke-direct {p0, v7, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v2

    move v3, v2

    .local v3, "q":I
    if-gt v2, v7, :cond_29

    goto :goto_64

    :cond_29
    move v7, v3

    .line 3344
    const/16 v2, 0x2e

    invoke-direct {p0, v7, v0, v2}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    move v3, v4

    if-gt v4, v7, :cond_34

    goto :goto_64

    :cond_34
    move v7, v3

    .line 3345
    invoke-direct {p0, v7, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v4

    move v3, v4

    if-gt v4, v7, :cond_3d

    goto :goto_64

    :cond_3d
    move v7, v3

    .line 3346
    invoke-direct {p0, v7, v0, v2}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    move v3, v4

    if-gt v4, v7, :cond_46

    goto :goto_64

    :cond_46
    move v7, v3

    .line 3347
    invoke-direct {p0, v7, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v4

    move v3, v4

    if-gt v4, v7, :cond_4f

    goto :goto_64

    :cond_4f
    move v7, v3

    .line 3348
    invoke-direct {p0, v7, v0, v2}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v2

    move v3, v2

    if-gt v2, v7, :cond_58

    goto :goto_64

    :cond_58
    move v7, v3

    .line 3349
    invoke-direct {p0, v7, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v2

    move v3, v2

    if-gt v2, v7, :cond_61

    goto :goto_64

    :cond_61
    move v7, v3

    .line 3350
    if-ge v3, v0, :cond_6a

    .line 3353
    :goto_64
    const-string v2, "Malformed IPv4 address"

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3354
    return v1

    .line 3351
    :cond_6a
    return v3

    .line 3339
    .end local v3    # "q":I
    :cond_6b
    :goto_6b
    return v1
.end method

.method private greylist-max-o substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2914
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o takeIPv4Address(IILjava/lang/String;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3363
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0

    .line 3364
    .local v0, "p":I
    if-gt v0, p1, :cond_a

    .line 3365
    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3366
    :cond_a
    return v0
.end method


# virtual methods
.method greylist-max-o parse(Z)V
    .registers 14
    .param p1, "rsa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3085
    iput-boolean p1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3087
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3088
    .local v0, "n":I
    const/4 v1, 0x0

    const-string v2, "/?#"

    const-string v3, ":"

    invoke-direct {p0, v1, v0, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3089
    .local v2, "p":I
    if-ltz v2, :cond_7c

    const/16 v3, 0x3a

    invoke-direct {p0, v2, v0, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 3090
    if-nez v2, :cond_22

    .line 3091
    const-string v3, "scheme name"

    invoke-direct {p0, v3, v1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3092
    :cond_22
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    # getter for: Ljava/net/URI;->H_ALPHA:J
    invoke-static {}, Ljava/net/URI;->access$400()J

    move-result-wide v8

    const-string v10, "scheme name"

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    .line 3093
    const/4 v5, 0x1

    # getter for: Ljava/net/URI;->L_SCHEME:J
    invoke-static {}, Ljava/net/URI;->access$500()J

    move-result-wide v7

    # getter for: Ljava/net/URI;->H_SCHEME:J
    invoke-static {}, Ljava/net/URI;->access$600()J

    move-result-wide v9

    const-string v11, "scheme name"

    move v6, v2

    invoke-direct/range {v4 .. v11}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3094
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    # setter for: Ljava/net/URI;->scheme:Ljava/lang/String;
    invoke-static {v3, v1}, Ljava/net/URI;->access$702(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3095
    add-int/lit8 v2, v2, 0x1

    .line 3096
    move v1, v2

    .line 3097
    .local v1, "ssp":I
    const/16 v3, 0x2f

    invoke-direct {p0, v2, v0, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 3098
    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v2

    move v9, v1

    move v10, v2

    goto :goto_83

    .line 3100
    :cond_59
    const-string v3, ""

    const-string v4, "#"

    invoke-direct {p0, v2, v0, v3, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3101
    .local v3, "q":I
    if-gt v3, v2, :cond_68

    .line 3102
    const-string v4, "scheme-specific part"

    invoke-direct {p0, v4, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3103
    :cond_68
    # getter for: Ljava/net/URI;->L_URIC:J
    invoke-static {}, Ljava/net/URI;->access$800()J

    move-result-wide v7

    # getter for: Ljava/net/URI;->H_URIC:J
    invoke-static {}, Ljava/net/URI;->access$900()J

    move-result-wide v9

    const-string v11, "opaque part"

    move-object v4, p0

    move v5, v2

    move v6, v3

    invoke-direct/range {v4 .. v11}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3104
    move v2, v3

    .line 3105
    .end local v3    # "q":I
    move v9, v1

    move v10, v2

    goto :goto_83

    .line 3107
    .end local v1    # "ssp":I
    :cond_7c
    const/4 v3, 0x0

    .line 3108
    .local v3, "ssp":I
    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v2

    move v10, v2

    move v9, v3

    .line 3110
    .end local v2    # "p":I
    .end local v3    # "ssp":I
    .local v9, "ssp":I
    .local v10, "p":I
    :goto_83
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v9, v10}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$1002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3111
    const/16 v1, 0x23

    invoke-direct {p0, v10, v0, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 3112
    add-int/lit8 v2, v10, 0x1

    # getter for: Ljava/net/URI;->L_URIC:J
    invoke-static {}, Ljava/net/URI;->access$800()J

    move-result-wide v4

    # getter for: Ljava/net/URI;->H_URIC:J
    invoke-static {}, Ljava/net/URI;->access$900()J

    move-result-wide v6

    const-string v8, "fragment"

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3113
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v2, v10, 0x1

    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Ljava/net/URI;->fragment:Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/net/URI;->access$1102(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3114
    move v10, v0

    .line 3116
    :cond_b1
    if-ge v10, v0, :cond_b8

    .line 3117
    const-string v1, "end of URI"

    invoke-direct {p0, v1, v10}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3118
    :cond_b8
    return-void
.end method
