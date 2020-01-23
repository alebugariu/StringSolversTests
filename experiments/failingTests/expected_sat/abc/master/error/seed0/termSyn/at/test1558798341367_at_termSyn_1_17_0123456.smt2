(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (int.to.str tmp_int5)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;I0818 17:37:24.078737  3310 UnaryAutomaton.cpp:325] 1
;I0818 17:37:24.081051  3310 UnaryAutomaton.cpp:326] 1
;I0818 17:37:24.081066  3310 UnaryAutomaton.cpp:327] 1
;F0818 17:37:24.086509  3310 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f7cb0045f5d  google::LogMessage::Fail()
;    @     0x7f7cb0048513  google::LogMessage::SendToLog()
;    @     0x7f7cb0045aeb  google::LogMessage::Flush()
;    @     0x7f7cb004745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7cb0669a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f7cb06b7992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb0668762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f7cb06b4df0  Vlab::SMT::ToString::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb06637f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7cb06b0450  Vlab::SMT::Eq::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb0661878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7cb06a25ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7cb069996e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7cb06aeb5c  Vlab::SMT::And::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb06a2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7cb0698d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7cb06acd2a  Vlab::SMT::Assert::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb06bb699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7cb06ac067  Vlab::SMT::Script::visit_children()
;    @     0x7f7cb05b69e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7cb0698b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7cb06ac03c  Vlab::SMT::Script::accept()
;    @     0x7f7cb05b69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7cb06987bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7cb059cb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f7caf6f8830  __libc_start_main
