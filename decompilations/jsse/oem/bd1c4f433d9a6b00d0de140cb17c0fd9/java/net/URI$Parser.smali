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
.field private input:Ljava/lang/String;

.field private ipv6byteCount:I

.field private requireServerAuthority:Z

.field final synthetic this$0:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Ljava/net/URI;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2863
    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2861
    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3478
    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 2864
    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    .line 2865
    invoke-static {p1, p2}, Ljava/net/URI;->-set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 2866
    return-void
.end method

.method private at(IIC)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 2909
    if-ge p1, p2, :cond_a

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private at(IILjava/lang/String;)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2916
    move v1, p1

    .line 2917
    .local v1, "p":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2918
    .local v3, "sn":I
    sub-int v5, p2, p1

    if-le v3, v5, :cond_b

    .line 2919
    return v4

    .line 2920
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .line 2921
    .end local v1    # "p":I
    .local v2, "p":I
    :goto_d
    if-ge v0, v3, :cond_23

    .line 2922
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1f

    .line 2927
    :goto_1b
    if-ne v0, v3, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    return v4

    .line 2925
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_d

    :cond_23
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1b
.end method

.method private charAt(I)C
    .registers 3
    .param p1, "p"    # I

    .prologue
    .line 2903
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private checkChar(IJJLjava/lang/String;)V
    .registers 17
    .param p1, "p"    # I
    .param p2, "lowMask"    # J
    .param p4, "highMask"    # J
    .param p6, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3058
    add-int/lit8 v3, p1, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3059
    return-void
.end method

.method private checkChars(IIJJLjava/lang/String;)V
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

    .prologue
    .line 3046
    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3047
    .local v0, "p":I
    if-ge v0, p2, :cond_1d

    .line 3048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3049
    :cond_1d
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2871
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private fail(Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2875
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private failExpecting(Ljava/lang/String;I)V
    .registers 5
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2882
    return-void
.end method

.method private failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "prior"    # Ljava/lang/String;
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " following "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2888
    return-void
.end method

.method private parseAuthority(II)I
    .registers 16
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3156
    move v8, p1

    .line 3157
    .local v8, "p":I
    move v9, p1

    .line 3158
    .local v9, "q":I
    const/4 v0, 0x0

    .line 3163
    .local v0, "ex":Ljava/net/URISyntaxException;
    const-string/jumbo v1, ""

    const-string/jumbo v2, "]"

    invoke-direct {p0, p1, p2, v1, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-le v1, p1, :cond_45

    .line 3165
    invoke-static {}, Ljava/net/URI;->-get22()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get9()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_43

    const/4 v11, 0x1

    .line 3169
    .local v11, "serverChars":Z
    :goto_21
    invoke-static {}, Ljava/net/URI;->-get19()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get6()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_5a

    const/4 v10, 0x1

    .line 3171
    .local v10, "regChars":Z
    :goto_33
    if-eqz v10, :cond_5c

    xor-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_5c

    .line 3173
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3174
    return p2

    .line 3165
    .end local v10    # "regChars":Z
    .end local v11    # "serverChars":Z
    :cond_43
    const/4 v11, 0x0

    .restart local v11    # "serverChars":Z
    goto :goto_21

    .line 3167
    .end local v11    # "serverChars":Z
    :cond_45
    invoke-static {}, Ljava/net/URI;->-get21()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get8()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_58

    const/4 v11, 0x1

    .restart local v11    # "serverChars":Z
    goto :goto_21

    .end local v11    # "serverChars":Z
    :cond_58
    const/4 v11, 0x0

    .restart local v11    # "serverChars":Z
    goto :goto_21

    .line 3169
    :cond_5a
    const/4 v10, 0x0

    .restart local v10    # "regChars":Z
    goto :goto_33

    .line 3177
    :cond_5c
    if-eqz v11, :cond_73

    .line 3182
    :try_start_5e
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->parseServer(II)I

    move-result v9

    .line 3183
    if-ge v9, p2, :cond_6a

    .line 3184
    const-string/jumbo v1, "end of authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3185
    :cond_6a
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/net/URISyntaxException; {:try_start_5e .. :try_end_73} :catch_81

    .line 3204
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    :cond_73
    :goto_73
    if-ge v9, p2, :cond_80

    .line 3205
    if-eqz v10, :cond_9c

    .line 3207
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3217
    :cond_80
    :goto_80
    return p2

    .line 3186
    .restart local v0    # "ex":Ljava/net/URISyntaxException;
    :catch_81
    move-exception v12

    .line 3188
    .local v12, "x":Ljava/net/URISyntaxException;
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3189
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3190
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I

    .line 3191
    iget-boolean v1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    if-eqz v1, :cond_99

    .line 3194
    throw v12

    .line 3198
    :cond_99
    move-object v0, v12

    .line 3199
    .local v0, "ex":Ljava/net/URISyntaxException;
    move v9, p1

    goto :goto_73

    .line 3208
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v12    # "x":Ljava/net/URISyntaxException;
    :cond_9c
    if-eqz v0, :cond_9f

    .line 3211
    throw v0

    .line 3213
    :cond_9f
    const-string/jumbo v1, "Illegal character in authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_80
.end method

.method private parseHierarchical(II)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 3119
    move v2, p1

    .line 3120
    .local v2, "p":I
    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_23

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3121
    add-int/lit8 v2, p1, 0x2

    .line 3122
    const-string/jumbo v0, ""

    const-string/jumbo v1, "/?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3123
    .local v3, "q":I
    if-le v3, v2, :cond_74

    .line 3124
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->parseAuthority(II)I

    move-result v2

    .line 3131
    .end local v3    # "q":I
    :cond_23
    :goto_23
    const-string/jumbo v0, ""

    const-string/jumbo v1, "?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3132
    .restart local v3    # "q":I
    invoke-static {}, Ljava/net/URI;->-get18()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get5()J

    move-result-wide v6

    const-string/jumbo v8, "path"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3133
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3134
    move v2, v3

    .line 3135
    const/16 v0, 0x3f

    invoke-direct {p0, v3, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3136
    add-int/lit8 v2, v3, 0x1

    .line 3137
    const-string/jumbo v0, ""

    const-string/jumbo v1, "#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3138
    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v6

    const-string/jumbo v8, "query"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3139
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3140
    move v2, v3

    .line 3142
    :cond_73
    return v2

    .line 3125
    :cond_74
    if-lt v3, p2, :cond_23

    .line 3129
    const-string/jumbo v0, "authority"

    invoke-direct {p0, v0, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    goto :goto_23
.end method

.method private parseHostname(II)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3388
    move v2, p1

    .line 3390
    .local v2, "p":I
    const/4 v0, -0x1

    .line 3401
    .local v0, "l":I
    :goto_2
    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    .line 3402
    .local v4, "q":I
    if-gt v4, v2, :cond_50

    .line 3420
    :cond_12
    if-ge v2, p2, :cond_24

    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    .line 3421
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3423
    :cond_24
    if-gez v0, :cond_2c

    .line 3424
    const-string/jumbo v1, "hostname"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3428
    :cond_2c
    if-le v0, p1, :cond_46

    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    .line 3429
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3432
    :cond_46
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3433
    return v2

    .line 3404
    :cond_50
    move v0, v2

    .line 3405
    if-le v4, v2, :cond_8b

    .line 3406
    move v2, v4

    .line 3407
    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get14()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get23()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v8

    invoke-static {}, Ljava/net/URI;->-get2()J

    move-result-wide v10

    or-long/2addr v8, v10

    invoke-static {}, Ljava/net/URI;->-get10()J

    move-result-wide v10

    or-long/2addr v8, v10

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v3 .. v9}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    .line 3408
    if-le v4, v2, :cond_8b

    .line 3409
    add-int/lit8 v1, v4, -0x1

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_8a

    .line 3410
    const-string/jumbo v1, "Illegal character in hostname"

    add-int/lit8 v3, v4, -0x1

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3411
    :cond_8a
    move v2, v4

    .line 3414
    :cond_8b
    const/16 v1, 0x2e

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    .line 3415
    if-le v4, v2, :cond_12

    .line 3417
    move v2, v4

    .line 3418
    if-ge v4, p2, :cond_12

    goto/16 :goto_2
.end method

.method private parseIPv4Address(II)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v4, -0x1

    .line 3359
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_5} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_1f

    move-result v1

    .line 3366
    .local v1, "p":I
    if-le v1, p1, :cond_13

    if-ge v1, p2, :cond_13

    .line 3370
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_13

    .line 3371
    const/4 v1, -0x1

    .line 3375
    :cond_13
    if-le v1, p1, :cond_1e

    .line 3376
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3378
    :cond_1e
    return v1

    .line 3362
    .end local v1    # "p":I
    :catch_1f
    move-exception v0

    .line 3363
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v4

    .line 3360
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_21
    move-exception v2

    .line 3361
    .local v2, "x":Ljava/net/URISyntaxException;
    return v4
.end method

.method private parseIPv6Reference(II)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 3483
    move v1, p1

    .line 3485
    .local v1, "p":I
    const/4 v0, 0x0

    .line 3487
    .local v0, "compressedZeros":Z
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v2

    .line 3489
    .local v2, "q":I
    if-le v2, p1, :cond_5e

    .line 3490
    move v1, v2

    .line 3491
    const-string/jumbo v3, "::"

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3492
    const/4 v0, 0x1

    .line 3493
    add-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    .line 3502
    :cond_1b
    :goto_1b
    if-ge v1, p2, :cond_23

    .line 3503
    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3504
    :cond_23
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-le v3, v5, :cond_2d

    .line 3505
    const-string/jumbo v3, "IPv6 address too long"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3506
    :cond_2d
    if-nez v0, :cond_39

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ge v3, v5, :cond_39

    .line 3507
    const-string/jumbo v3, "IPv6 address too short"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3508
    :cond_39
    if-eqz v0, :cond_45

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ne v3, v5, :cond_45

    .line 3509
    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3511
    :cond_45
    return v1

    .line 3494
    :cond_46
    const/16 v3, 0x3a

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3495
    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v4, "IPv4 address"

    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v1

    .line 3496
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_1b

    .line 3498
    :cond_5e
    const-string/jumbo v3, "::"

    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3499
    const/4 v0, 0x1

    .line 3500
    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    goto :goto_1b
.end method

.method private parseServer(II)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3226
    move v2, p1

    .line 3230
    .local v2, "p":I
    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "@"

    invoke-direct {p0, p1, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3231
    .local v3, "q":I
    if-lt v3, p1, :cond_30

    const/16 v1, 0x40

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3232
    invoke-static {}, Ljava/net/URI;->-get25()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get12()J

    move-result-wide v6

    const-string/jumbo v8, "user info"

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3233
    .end local v2    # "p":I
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3234
    add-int/lit8 v2, v3, 0x1

    .line 3238
    .restart local v2    # "p":I
    :cond_30
    const/16 v1, 0x5b

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 3240
    add-int/lit8 v0, v2, 0x1

    .line 3241
    .end local v2    # "p":I
    .local v0, "p":I
    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "]"

    invoke-direct {p0, v0, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3242
    if-le v3, v0, :cond_c5

    const/16 v1, 0x5d

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 3244
    const-string/jumbo v1, ""

    const-string/jumbo v4, "%"

    invoke-direct {p0, v0, v3, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3245
    .local v9, "r":I
    if-le v9, v0, :cond_c1

    .line 3246
    invoke-direct {p0, v0, v9}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3247
    add-int/lit8 v1, v9, 0x1

    if-ne v1, v3, :cond_67

    .line 3248
    const-string/jumbo v1, "scope id expected"

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    .line 3250
    :cond_67
    add-int/lit8 v2, v9, 0x1

    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    .line 3251
    const-string/jumbo v8, "scope id"

    move-object v1, p0

    .line 3250
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3255
    :goto_78
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3256
    add-int/lit8 v2, v3, 0x1

    .line 3268
    .end local v0    # "p":I
    .end local v9    # "r":I
    .restart local v2    # "p":I
    :goto_87
    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 3269
    add-int/lit8 v2, v2, 0x1

    .line 3270
    const-string/jumbo v1, ""

    const-string/jumbo v4, "/"

    invoke-direct {p0, v2, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3271
    if-le v3, v2, :cond_b8

    .line 3272
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-string/jumbo v8, "port number"

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3274
    :try_start_aa
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_b7} :catch_d9

    .line 3278
    :goto_b7
    move v2, v3

    .line 3281
    :cond_b8
    if-ge v2, p2, :cond_c0

    .line 3282
    const-string/jumbo v1, "port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3284
    :cond_c0
    return v2

    .line 3253
    .end local v2    # "p":I
    .restart local v0    # "p":I
    .restart local v9    # "r":I
    :cond_c1
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    goto :goto_78

    .line 3258
    .end local v9    # "r":I
    :cond_c5
    const-string/jumbo v1, "closing bracket for IPv6 address"

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    move v2, v0

    .end local v0    # "p":I
    .restart local v2    # "p":I
    goto :goto_87

    .line 3261
    :cond_cd
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    move-result v3

    .line 3262
    if-gt v3, v2, :cond_d7

    .line 3263
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseHostname(II)I

    move-result v3

    .line 3264
    :cond_d7
    move v2, v3

    goto :goto_87

    .line 3275
    :catch_d9
    move-exception v10

    .line 3276
    .local v10, "x":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "Malformed port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_b7
.end method

.method private scan(IIC)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .prologue
    .line 2962
    if-ge p1, p2, :cond_b

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_b

    .line 2963
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 2964
    :cond_b
    return p1
.end method

.method private scan(IIJJ)I
    .registers 16
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3020
    move v1, p1

    .line 3021
    .local v1, "p":I
    :goto_1
    if-ge v1, p2, :cond_21

    .line 3022
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    .line 3023
    .local v0, "c":C
    invoke-static {v0, p3, p4, p5, p6}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3024
    add-int/lit8 v1, v1, 0x1

    .line 3025
    goto :goto_1

    .line 3027
    :cond_10
    const-wide/16 v4, 0x1

    and-long/2addr v4, p3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_21

    .line 3028
    invoke-direct {p0, v1, p2, v0}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    move-result v2

    .line 3029
    .local v2, "q":I
    if-le v2, v1, :cond_21

    .line 3030
    move v1, v2

    .line 3031
    goto :goto_1

    .line 3036
    .end local v0    # "c":C
    .end local v2    # "q":I
    :cond_21
    return v1
.end method

.method private scan(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "err"    # Ljava/lang/String;
    .param p4, "stop"    # Ljava/lang/String;

    .prologue
    .line 2975
    move v1, p1

    .line 2976
    .local v1, "p":I
    :goto_1
    if-ge v1, p2, :cond_15

    .line 2977
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    .line 2978
    .local v0, "c":C
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    .line 2979
    const/4 v2, -0x1

    return v2

    .line 2980
    :cond_f
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    .line 2984
    .end local v0    # "c":C
    :cond_15
    return v1

    .line 2982
    .restart local v0    # "c":C
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private scanByte(II)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3292
    move v0, p1

    .line 3293
    .local v0, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v8

    .line 3294
    .local v8, "q":I
    if-gt v8, p1, :cond_11

    return v8

    .line 3295
    :cond_11
    invoke-direct {p0, p1, v8}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1e

    return p1

    .line 3296
    :cond_1e
    return v8
.end method

.method private scanEscape(IIC)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "first"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2996
    move v1, p1

    .line 2997
    .local v1, "p":I
    move v0, p3

    .line 2998
    .local v0, "c":C
    const/16 v2, 0x25

    if-ne p3, v2, :cond_3c

    .line 3000
    add-int/lit8 v2, p1, 0x3

    if-gt v2, p2, :cond_35

    .line 3001
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    .line 3000
    if-eqz v2, :cond_35

    .line 3002
    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    .line 3000
    if-eqz v2, :cond_35

    .line 3003
    add-int/lit8 v2, p1, 0x3

    return v2

    .line 3005
    :cond_35
    const-string/jumbo v2, "Malformed escape pair"

    invoke-direct {p0, v2, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3012
    :cond_3b
    return p1

    .line 3006
    :cond_3c
    const/16 v2, 0x80

    if-le p3, v2, :cond_3b

    .line 3007
    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3006
    if-eqz v2, :cond_3b

    .line 3008
    invoke-static {p3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3006
    if-eqz v2, :cond_3b

    .line 3010
    add-int/lit8 v2, p1, 0x1

    return v2
.end method

.method private scanHexPost(II)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3517
    move v0, p1

    .line 3520
    .local v0, "p":I
    if-ne p1, p2, :cond_4

    .line 3521
    return p1

    .line 3523
    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v1

    .line 3524
    .local v1, "q":I
    if-le v1, p1, :cond_23

    .line 3525
    move v0, v1

    .line 3526
    const/16 v2, 0x3a

    invoke-direct {p0, v1, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3527
    add-int/lit8 v0, v1, 0x1

    .line 3528
    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3529
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3535
    :cond_22
    :goto_22
    return v0

    .line 3532
    :cond_23
    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, p1, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3533
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_22
.end method

.method private scanHexSeq(II)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0x2e

    const/4 v8, -0x1

    .line 3543
    move v2, p1

    .line 3546
    .local v2, "p":I
    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    .end local v2    # "p":I
    move-result v0

    .line 3547
    .local v0, "q":I
    if-gt v0, p1, :cond_18

    .line 3548
    return v8

    .line 3549
    :cond_18
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3550
    return v8

    .line 3551
    :cond_1f
    add-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_29

    .line 3552
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3553
    :cond_29
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3554
    move v2, v0

    .line 3555
    .restart local v2    # "p":I
    :goto_30
    if-ge v2, p2, :cond_38

    .line 3556
    invoke-direct {p0, v2, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_39

    .line 3574
    :cond_38
    :goto_38
    return v2

    .line 3558
    :cond_39
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_38

    .line 3560
    add-int/lit8 v2, v2, 0x1

    .line 3561
    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3562
    if-gt v0, v2, :cond_59

    .line 3563
    const-string/jumbo v1, "digits for an IPv6 address"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3564
    :cond_59
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3565
    add-int/lit8 v2, v2, -0x1

    .line 3566
    goto :goto_38

    .line 3568
    :cond_62
    add-int/lit8 v1, v2, 0x4

    if-le v0, v1, :cond_6c

    .line 3569
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3570
    :cond_6c
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3571
    move v2, v0

    goto :goto_30
.end method

.method private scanIPv4Address(IIZ)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3317
    move v8, p1

    .line 3319
    .local v8, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-get16()J

    move-result-wide v4

    or-long/2addr v4, v2

    invoke-static {}, Ljava/net/URI;->-get3()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    or-long/2addr v6, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3320
    .local v0, "m":I
    if-le v0, p1, :cond_1e

    if-eqz p3, :cond_20

    if-eq v0, p2, :cond_20

    .line 3321
    :cond_1e
    const/4 v1, -0x1

    return v1

    .line 3325
    :cond_20
    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .local v9, "q":I
    if-gt v9, p1, :cond_2e

    .line 3335
    :cond_26
    :goto_26
    const-string/jumbo v1, "Malformed IPv4 address"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3336
    const/4 v1, -0x1

    return v1

    .line 3325
    :cond_2e
    move v8, v9

    .line 3326
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .local v10, "q":I
    if-gt v10, v9, :cond_39

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_26

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_39
    move v8, v10

    .line 3327
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_26

    move v8, v9

    .line 3328
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_4b

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_26

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_4b
    move v8, v10

    .line 3329
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_26

    move v8, v9

    .line 3330
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_5d

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_26

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_5d
    move v8, v10

    .line 3331
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_26

    move v8, v9

    .line 3332
    if-lt v9, v0, :cond_26

    .line 3333
    return v9
.end method

.method private substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2896
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private takeIPv4Address(IILjava/lang/String;)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3345
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0

    .line 3346
    .local v0, "p":I
    if-gt v0, p1, :cond_a

    .line 3347
    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3348
    :cond_a
    return v0
.end method


# virtual methods
.method parse(Z)V
    .registers 20
    .param p1, "rsa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3067
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3069
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    .line 3070
    .local v15, "n":I
    const-string/jumbo v2, "/?#"

    const-string/jumbo v3, ":"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 3071
    .local v16, "p":I
    if-ltz v16, :cond_e9

    const/16 v2, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 3072
    if-nez v16, :cond_34

    .line 3073
    const-string/jumbo v2, "scheme name"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3074
    :cond_34
    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-string/jumbo v8, "scheme name"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    .line 3075
    invoke-static {}, Ljava/net/URI;->-get20()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get7()J

    move-result-wide v8

    const-string/jumbo v10, "scheme name"

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move/from16 v5, v16

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3077
    add-int/lit8 v4, v16, 0x1

    .line 3078
    .end local v16    # "p":I
    .local v4, "p":I
    move/from16 v17, v4

    .line 3079
    .local v17, "ssp":I
    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 3080
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    .line 3092
    :goto_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3093
    const/16 v2, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 3094
    add-int/lit8 v8, v4, 0x1

    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v10

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v12

    const-string/jumbo v14, "fragment"

    move-object/from16 v7, p0

    move v9, v15

    invoke-direct/range {v7 .. v14}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3095
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3096
    move v4, v15

    .line 3098
    :cond_b6
    if-ge v4, v15, :cond_c0

    .line 3099
    const-string/jumbo v2, "end of URI"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3100
    :cond_c0
    return-void

    .line 3082
    :cond_c1
    const-string/jumbo v2, ""

    const-string/jumbo v3, "#"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3083
    .local v5, "q":I
    if-gt v5, v4, :cond_d7

    .line 3084
    const-string/jumbo v2, "scheme-specific part"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3085
    :cond_d7
    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v8

    const-string/jumbo v10, "opaque part"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3086
    move v4, v5

    goto :goto_7a

    .line 3089
    .end local v4    # "p":I
    .end local v5    # "q":I
    .end local v17    # "ssp":I
    .restart local v16    # "p":I
    :cond_e9
    const/16 v17, 0x0

    .line 3090
    .restart local v17    # "ssp":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    .end local v16    # "p":I
    .restart local v4    # "p":I
    goto :goto_7a
.end method
