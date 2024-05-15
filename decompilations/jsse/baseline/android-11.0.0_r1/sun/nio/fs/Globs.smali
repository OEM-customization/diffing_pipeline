.class public Lsun/nio/fs/Globs;
.super Ljava/lang/Object;
.source "Globs.java"


# static fields
.field private static blacklist EOL:C = '\u0000'

.field private static final blacklist globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final blacklist regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-char v0, Lsun/nio/fs/Globs;->EOL:C

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isGlobMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 41
    const-string v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist isRegexMeta(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 37
    const-string v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist next(Ljava/lang/String;I)C
    .registers 3
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 49
    :cond_b
    sget-char v0, Lsun/nio/fs/Globs;->EOL:C

    return v0
.end method

.method private static blacklist toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 16
    .param p0, "globPattern"    # Ljava/lang/String;
    .param p1, "isDos"    # Z

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "inGroup":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "regex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18b

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, "c":C
    const/16 v4, 0x2a

    if-eq v2, v4, :cond_16b

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_15f

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_153

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_145

    const/16 v5, 0x7b

    if-eq v2, v5, :cond_131

    const/16 v5, 0x7d

    if-eq v2, v5, :cond_123

    const/16 v5, 0x5b

    const/16 v6, 0x5c

    if-eq v2, v5, :cond_6e

    if-eq v2, v6, :cond_43

    .line 196
    invoke-static {v2}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 197
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_188

    .line 67
    :cond_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_64

    .line 71
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 72
    .local v3, "next":C
    invoke-static {v3}, Lsun/nio/fs/Globs;->isGlobMeta(C)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-static {v3}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 73
    :cond_5b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    move v2, v4

    goto/16 :goto_189

    .line 68
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_64
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "No character to escape"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 86
    :cond_6e
    if-eqz p1, :cond_76

    .line 87
    const-string v7, "[[^\\\\]&&["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 89
    :cond_76
    const-string v7, "[[^/]&&["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_7b
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v7

    const/16 v8, 0x5e

    const/16 v9, 0x2d

    if-ne v7, v8, :cond_8d

    .line 93
    const-string v7, "\\^"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    .line 97
    :cond_8d
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v7

    const/16 v10, 0x21

    if-ne v7, v10, :cond_9a

    .line 98
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 102
    :cond_9a
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v7

    if-ne v7, v9, :cond_a5

    .line 103
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 107
    :cond_a5
    :goto_a5
    const/4 v7, 0x0

    .line 108
    .local v7, "hasRangeStart":Z
    const/4 v8, 0x0

    .line 109
    .local v8, "last":C
    :goto_a7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x5d

    if-ge v3, v10, :cond_10f

    .line 110
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .local v10, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 111
    if-ne v2, v11, :cond_b9

    .line 112
    move v3, v10

    goto :goto_10f

    .line 114
    :cond_b9
    if-eq v2, v4, :cond_105

    if-eqz p1, :cond_bf

    if-eq v2, v6, :cond_105

    .line 119
    :cond_bf
    if-eq v2, v6, :cond_cd

    if-eq v2, v5, :cond_cd

    const/16 v3, 0x26

    if-ne v2, v3, :cond_d0

    .line 120
    invoke-static {p0, v10}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v12

    if-ne v12, v3, :cond_d0

    .line 122
    :cond_cd
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    if-ne v2, v9, :cond_101

    .line 127
    const-string v3, "Invalid range"

    if-eqz v7, :cond_f9

    .line 131
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "i":I
    .local v12, "i":I
    invoke-static {p0, v10}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v10

    move v2, v10

    sget-char v13, Lsun/nio/fs/Globs;->EOL:C

    if-eq v10, v13, :cond_f7

    if-ne v2, v11, :cond_e7

    .line 132
    goto :goto_f7

    .line 134
    :cond_e7
    if-lt v2, v8, :cond_ef

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v7, 0x0

    move v3, v12

    goto :goto_a7

    .line 135
    :cond_ef
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v12, -0x3

    invoke-direct {v4, v3, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 145
    :cond_f7
    :goto_f7
    move v3, v12

    goto :goto_10f

    .line 128
    .end local v12    # "i":I
    .restart local v10    # "i":I
    :cond_f9
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v10, -0x1

    invoke-direct {v4, v3, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 141
    :cond_101
    const/4 v7, 0x1

    .line 142
    move v8, v2

    move v3, v10

    goto :goto_a7

    .line 115
    :cond_105
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v10, -0x1

    const-string v5, "Explicit \'name separator\' in class"

    invoke-direct {v3, v5, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 145
    .end local v10    # "i":I
    .restart local v3    # "i":I
    :cond_10f
    :goto_10f
    if-ne v2, v11, :cond_119

    .line 148
    const-string v4, "]]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move v2, v3

    goto/16 :goto_189

    .line 146
    :cond_119
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "Missing \']"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 159
    .end local v7    # "hasRangeStart":Z
    .end local v8    # "last":C
    :cond_123
    if-eqz v0, :cond_12d

    .line 160
    const-string v4, "))"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x0

    move v2, v3

    goto :goto_189

    .line 163
    :cond_12d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    goto :goto_188

    .line 151
    :cond_131
    if-nez v0, :cond_13b

    .line 155
    const-string v4, "(?:(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x1

    .line 157
    move v2, v3

    goto :goto_189

    .line 152
    :cond_13b
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "Cannot nest groups"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 188
    :cond_145
    if-eqz p1, :cond_14d

    .line 189
    const-string v4, "[^\\\\]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 191
    :cond_14d
    const-string v4, "[^/]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    goto :goto_188

    .line 78
    :cond_153
    if-eqz p1, :cond_15b

    .line 79
    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 81
    :cond_15b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    goto :goto_188

    .line 167
    :cond_15f
    if-eqz v0, :cond_167

    .line 168
    const-string v4, ")|(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 170
    :cond_167
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_188

    .line 174
    :cond_16b
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_17a

    .line 176
    const-string v4, ".*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_189

    .line 180
    :cond_17a
    if-eqz p1, :cond_182

    .line 181
    const-string v4, "[^\\\\]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_188

    .line 183
    :cond_182
    const-string v4, "[^/]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    nop

    .line 201
    .end local v2    # "c":C
    :goto_188
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_189
    goto/16 :goto_9

    .line 203
    :cond_18b
    if-nez v0, :cond_197

    .line 207
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 204
    :cond_197
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v2, -0x1

    const-string v5, "Missing \'}"

    invoke-direct {v3, v5, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3
.end method

.method static blacklist toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "globPattern"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
