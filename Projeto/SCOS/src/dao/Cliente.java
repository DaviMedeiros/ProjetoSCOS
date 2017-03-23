/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.Date;

/**
 *
 * @author Usuario
 */
public class Cliente {
    private int cpcliente;
    private int ceendereco;
    private String txnome;
    private String txtel;
    private String txcel;
    private String txcpf_cnpj;
    private String txrg_inscrEst;
    private String txuf_rg;
    private int tipo;
    private String txemail;
    private String txobs;
    private int statuscli;
    private Date dtcadcliente;

    
    public int getCpcliente() {
        return cpcliente;
    }

    public void setCpcliente(int cpcliente) {
        this.cpcliente = cpcliente;
    }

    public int getCeendereco() {
        return ceendereco;
    }

    public void setCeendereco(int ceendereco) {
        this.ceendereco = ceendereco;
    }

    public String getTxnome() {
        return txnome;
    }

    public void setTxnome(String txnome) {
        this.txnome = txnome;
    }

    public String getTxtel() {
        return txtel;
    }

    public void setTxtel(String txtel) {
        this.txtel = txtel;
    }

    public String getTxcel() {
        return txcel;
    }

    public void setTxcel(String txcel) {
        this.txcel = txcel;
    }

    public String getTxcpf_cnpj() {
        return txcpf_cnpj;
    }

    public void setTxcpf_cnpj(String txcpf_cnpj) {
        this.txcpf_cnpj = txcpf_cnpj;
    }

    public String getTxrg_inscrEst() {
        return txrg_inscrEst;
    }

    public void setTxrg_inscrEst(String txrg_inscrEst) {
        this.txrg_inscrEst = txrg_inscrEst;
    }

    public String getTxuf_rg() {
        return txuf_rg;
    }

    public void setTxuf_rg(String txuf_rg) {
        this.txuf_rg = txuf_rg;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getTxemail() {
        return txemail;
    }

    public void setTxemail(String txemail) {
        this.txemail = txemail;
    }

    public String getTxobs() {
        return txobs;
    }

    public void setTxobs(String txobs) {
        this.txobs = txobs;
    }

    public int getStatuscli() {
        return statuscli;
    }

    public void setStatuscli(int statuscli) {
        this.statuscli = statuscli;
    }

    public Date getDtcadcliente() {
        return dtcadcliente;
    }

    public void setDtcadcliente(Date dtcadcliente) {
        this.dtcadcliente = dtcadcliente;
    }
    
    
    
}
