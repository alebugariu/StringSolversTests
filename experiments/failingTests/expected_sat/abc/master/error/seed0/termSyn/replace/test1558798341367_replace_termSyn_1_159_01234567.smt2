(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0) (str.at tmp_str2 tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:13.459389  3219 UnaryAutomaton.cpp:325] 1
;I0818 17:37:13.459408  3219 UnaryAutomaton.cpp:326] 1
;I0818 17:37:13.459416  3219 UnaryAutomaton.cpp:327] 1
;F0818 17:37:13.520550  3219 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f3c685f3f5d  google::LogMessage::Fail()
;    @     0x7f3c685f6513  google::LogMessage::SendToLog()
;    @     0x7f3c685f3aeb  google::LogMessage::Flush()
;    @     0x7f3c685f545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3c68c17a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f3c68c65992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c16762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f3c68c62df0  Vlab::SMT::ToString::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c117f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f3c68c5e450  Vlab::SMT::Eq::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c0f878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f3c68c505ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f3c68c4796e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3c68c5cb5c  Vlab::SMT::And::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c50a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3c68c46d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3c68c5ad2a  Vlab::SMT::Assert::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c69699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3c68c5a067  Vlab::SMT::Script::visit_children()
;    @     0x7f3c68b649e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3c68c46b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f3c68c5a03c  Vlab::SMT::Script::accept()
;    @     0x7f3c68b649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c68c467bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f3c68b4ab84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f3c67ca6830  __libc_start_main
