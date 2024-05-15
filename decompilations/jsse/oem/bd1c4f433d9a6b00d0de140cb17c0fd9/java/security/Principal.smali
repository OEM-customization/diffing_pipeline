.class public interface abstract Ljava/security/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public implies(Ljavax/security/auth/Subject;)Z
    .registers 3
    .param p1, "subject"    # Ljavax/security/auth/Subject;

    .prologue
    .line 90
    if-nez p1, :cond_4

    .line 91
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_4
    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
