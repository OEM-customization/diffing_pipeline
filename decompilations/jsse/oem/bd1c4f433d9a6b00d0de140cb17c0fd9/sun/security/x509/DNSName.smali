.class public Lsun/security/x509/DNSName;
.super Ljava/lang/Object;
.source "DNSName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final alpha:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

.field private static final alphaDigitsAndHyphen:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-"

.field private static final digitsAndHyphen:Ljava/lang/String; = "0123456789-"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 76
    :cond_e
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNS name must not be null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_17
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 78
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNS names or NameConstraints with blank components are not permitted"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_29
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_44

    .line 80
    :cond_3b
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNS names or NameConstraints may not begin or end with a ."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_44
    const/4 v2, 0x0

    .local v2, "startIndex":I
    :goto_45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_99

    .line 85
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 86
    .local v0, "endIndex":I
    if-gez v0, :cond_55

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 89
    :cond_55
    sub-int v4, v0, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_63

    .line 90
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNSName SubjectAltNames with empty components are not permitted"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_63
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_79

    .line 94
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNSName components must begin with a letter"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_79
    add-int/lit8 v1, v2, 0x1

    .local v1, "nonStartIndex":I
    :goto_7b
    if-ge v1, v0, :cond_96

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 98
    .local v3, "x":C
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_93

    .line 99
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DNSName components must consist of letters, digits, and hyphens"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 84
    .end local v3    # "x":C
    :cond_96
    add-int/lit8 v2, v0, 0x1

    goto :goto_45

    .line 102
    .end local v0    # "endIndex":I
    .end local v1    # "nonStartIndex":I
    :cond_99
    iput-object p1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 10
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    .line 197
    if-nez p1, :cond_6

    .line 198
    const/4 v0, -0x1

    .line 223
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_5
    return v0

    .line 199
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_6
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    .line 200
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 203
    .end local v0    # "constraintType":I
    :cond_f
    check-cast p1, Lsun/security/x509/DNSName;

    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "inName":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "thisName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 206
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 207
    .end local v0    # "constraintType":I
    :cond_2b
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 208
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, "inNdx":I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3f

    .line 210
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 212
    .end local v0    # "constraintType":I
    :cond_3f
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 213
    .end local v0    # "constraintType":I
    .end local v2    # "inNdx":I
    :cond_41
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 215
    .local v3, "ndx":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_55

    .line 216
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 218
    .end local v0    # "constraintType":I
    :cond_55
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_5

    .line 220
    .end local v0    # "constraintType":I
    .end local v3    # "ndx":I
    :cond_57
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_5
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 143
    if-ne p0, p1, :cond_4

    .line 144
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_4
    instance-of v1, p1, Lsun/security/x509/DNSName;

    if-nez v1, :cond_a

    .line 147
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 149
    check-cast v0, Lsun/security/x509/DNSName;

    .line 153
    .local v0, "other":Lsun/security/x509/DNSName;
    iget-object v1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    iget-object v2, v0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtreeDepth()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2e

    .line 236
    const/4 v1, 0x1

    .line 239
    .local v1, "sum":I
    iget-object v2, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_16

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 239
    iget-object v2, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_9

    .line 243
    :cond_16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DNSName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
