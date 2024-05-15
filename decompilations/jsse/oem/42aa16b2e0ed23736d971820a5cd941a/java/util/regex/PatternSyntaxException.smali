.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final greylist-max-o nl:Ljava/lang/String;

.field private static final whitelist serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private final greylist-max-o desc:Ljava/lang/String;

.field private final greylist-max-o index:I

.field private final greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 63
    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    .line 65
    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getDescription()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIndex()I
    .registers 2

    .line 75
    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return v0
.end method

.method public whitelist core-platform-api test-api getMessage()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_18

    .line 111
    const-string v1, " near index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    :cond_18
    sget-object v1, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v1, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_3d

    .line 117
    sget-object v1, Ljava/util/regex/PatternSyntaxException;->nl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ge v1, v2, :cond_38

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 119
    .end local v1    # "i":I
    :cond_38
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getPattern()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    return-object v0
.end method
