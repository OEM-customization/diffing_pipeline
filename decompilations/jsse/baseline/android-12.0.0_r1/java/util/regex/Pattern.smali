.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist test-api CANON_EQ:I = 0x80

.field public static final whitelist test-api CASE_INSENSITIVE:I = 0x2

.field public static final whitelist test-api COMMENTS:I = 0x4

.field public static final whitelist test-api DOTALL:I = 0x20

.field private static final greylist-max-o FASTSPLIT_METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"

.field public static final whitelist test-api LITERAL:I = 0x10

.field public static final whitelist test-api MULTILINE:I = 0x8

.field public static final whitelist test-api UNICODE_CASE:I = 0x40

.field public static final whitelist test-api UNICODE_CHARACTER_CLASS:I = 0x100

.field public static final whitelist test-api UNIX_LINES:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field private final greylist-max-o flags:I

.field transient blacklist nativePattern:Lcom/android/icu/util/regex/PatternNative;

.field private final greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "f"    # I

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 1380
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    .line 1392
    and-int/lit16 v0, p2, 0x80

    if-nez v0, :cond_2e

    .line 1395
    const/16 v0, 0x7f

    .line 1396
    .local v0, "supportedFlags":I
    not-int v1, v0

    and-int/2addr v1, p2

    if-nez v1, :cond_15

    .line 1404
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1412
    return-void

    .line 1397
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v0

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1393
    .end local v0    # "supportedFlags":I
    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CANON_EQ flag not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;

    .line 962
    new-instance v0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static whitelist test-api compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 988
    new-instance v0, Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private greylist-max-o compile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1421
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 1422
    .local v1, "icuPattern":Ljava/lang/String;
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_10

    .line 1423
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    :cond_10
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v0, v0, 0x2f

    .line 1429
    .local v0, "icuFlags":I
    invoke-static {v1, v0}, Lcom/android/icu/util/regex/PatternNative;->create(Ljava/lang/String;I)Lcom/android/icu/util/regex/PatternNative;

    move-result-object v2

    iput-object v2, p0, Ljava/util/regex/Pattern;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    .line 1430
    return-void

    .line 1418
    .end local v0    # "icuFlags":I
    .end local v1    # "icuPattern":Ljava/lang/String;
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 1213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1214
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1215
    return-object v1

    .line 1217
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1218
    .local v2, "ch":C
    const-string v3, "\\?*+[](){}^$.|"

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v4, :cond_1a

    goto :goto_2c

    .line 1220
    :cond_1a
    const/4 v6, 0x2

    if-ne v0, v6, :cond_86

    const/16 v6, 0x5c

    if-ne v2, v6, :cond_86

    .line 1223
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1224
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_2c

    .line 1225
    return-object v1

    .line 1235
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1236
    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1240
    :cond_39
    const/4 v1, 0x0

    .line 1241
    .local v1, "separatorCount":I
    const/4 v3, 0x0

    .line 1243
    .local v3, "begin":I
    :goto_3b
    add-int/lit8 v5, v1, 0x1

    if-eq v5, p2, :cond_4b

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v6, v5

    .local v6, "end":I
    if-eq v5, v4, :cond_4b

    .line 1244
    add-int/lit8 v1, v1, 0x1

    .line 1245
    add-int/lit8 v3, v6, 0x1

    goto :goto_3b

    .line 1247
    .end local v6    # "end":I
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1248
    .local v5, "lastPartEnd":I
    if-nez p2, :cond_68

    if-ne v3, v5, :cond_68

    .line 1250
    if-ne v1, v5, :cond_58

    .line 1252
    sget-object v4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v4

    .line 1256
    :cond_58
    add-int/2addr v3, v4

    .line 1257
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v2, :cond_58

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v1, v4

    .line 1260
    move v5, v3

    .line 1264
    :cond_68
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1265
    .local v4, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1266
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6e
    if-eq v6, v1, :cond_7f

    .line 1267
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1268
    .local v7, "end":I
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 1269
    add-int/lit8 v3, v7, 0x1

    .line 1266
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 1272
    .end local v6    # "i":I
    .end local v7    # "end":I
    :cond_7f
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 1273
    return-object v4

    .line 1228
    .end local v1    # "separatorCount":I
    .end local v3    # "begin":I
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "lastPartEnd":I
    :cond_86
    return-object v1
.end method

.method public static whitelist test-api matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 1070
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1071
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1072
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static whitelist test-api quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 1324
    const-string v0, "\\E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1325
    .local v1, "slashEIndex":I
    const-string v2, "\\Q"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1e

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1329
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const/4 v1, 0x0

    .line 1331
    const/4 v2, 0x0

    .line 1332
    .local v2, "current":I
    :goto_2e
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    if-eq v5, v3, :cond_44

    .line 1333
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    add-int/lit8 v2, v1, 0x2

    .line 1335
    const-string v5, "\\E\\\\E\\Q"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1337
    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1367
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1368
    return-void
.end method


# virtual methods
.method public whitelist test-api asPredicate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1440
    new-instance v0, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public whitelist test-api flags()I
    .registers 2

    .line 1040
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    return v0
.end method

.method public synthetic blacklist lambda$asPredicate$0$Pattern(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1440
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 1030
    new-instance v0, Ljava/util/regex/Matcher;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 1031
    .local v0, "m":Ljava/util/regex/Matcher;
    return-object v0
.end method

.method public whitelist test-api pattern()Ljava/lang/String;
    .registers 2

    .line 997
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .registers 12
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    .line 1144
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1146
    return-object v0

    .line 1149
    :cond_d
    const/4 v1, 0x0

    .line 1150
    .local v1, "index":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    .line 1151
    .local v4, "matchLimited":Z
    :goto_15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .local v5, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1155
    .local v6, "m":Ljava/util/regex/Matcher;
    :goto_1e
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1156
    if-eqz v4, :cond_4c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p2, -0x1

    if-ge v7, v8, :cond_2f

    goto :goto_4c

    .line 1171
    :cond_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p2, -0x1

    if-ne v7, v8, :cond_7e

    .line 1172
    nop

    .line 1173
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1172
    invoke-interface {p1, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1173
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1174
    .local v7, "match":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1176
    .end local v7    # "match":Ljava/lang/String;
    goto :goto_1e

    .line 1157
    :cond_4c
    :goto_4c
    if-nez v1, :cond_6b

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-ne v1, v7, :cond_6b

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    if-ne v7, v8, :cond_6b

    .line 1162
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v7

    .line 1163
    .local v7, "targetSdkVersion":I
    const/16 v8, 0x1c

    if-le v7, v8, :cond_6b

    .line 1164
    goto :goto_1e

    .line 1168
    .end local v7    # "targetSdkVersion":I
    :cond_6b
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-interface {p1, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, "match":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1171
    .end local v7    # "match":Ljava/lang/String;
    :cond_7e
    goto :goto_1e

    .line 1180
    :cond_7f
    if-nez v1, :cond_8a

    .line 1181
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    return-object v3

    .line 1184
    :cond_8a
    if-eqz v4, :cond_92

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p2, :cond_a1

    .line 1185
    :cond_92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1189
    .local v3, "resultSize":I
    if-nez p2, :cond_bc

    .line 1190
    :goto_a7
    if-lez v3, :cond_bc

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 1191
    add-int/lit8 v3, v3, -0x1

    goto :goto_a7

    .line 1192
    :cond_bc
    new-array v7, v3, [Ljava/lang/String;

    .line 1193
    .local v7, "result":[Ljava/lang/String;
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public whitelist test-api splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1537
    new-instance v0, Ljava/util/regex/Pattern$1MatcherIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern$1MatcherIterator;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1009
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
